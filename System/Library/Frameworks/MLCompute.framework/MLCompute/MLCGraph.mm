@interface MLCGraph
+ (MLCGraph)graph;
+ (MLCGraph)graphWithGraphObjects:(id)a3;
- (BOOL)addInputs:(id)a3 lossLabels:(id)a4 lossLabelWeights:(id)a5;
- (BOOL)addOutputs:(id)a3;
- (BOOL)bindAndWriteData:(id)a3 forInputs:(id)a4 toDevice:(id)a5 batchSize:(unint64_t)a6 synchronous:(BOOL)a7 skipWrite:(BOOL)a8;
- (BOOL)checkPageAlignmentAndSizeForOutputs:(id)a3;
- (BOOL)checksBeforeAddLayerInGraph:(id)a3 sources:(id)a4 forTraining:(BOOL)a5;
- (BOOL)dispatchReadsForMultipleTensorOutputs:(id)a3 finalTensorInGraph:(id)a4 finalResultTensor:(id)a5 batchSize:(unint64_t)a6;
- (BOOL)isLayerInGraphLayerList:(id)a3 graphLayerList:(id)a4;
- (MLCGraph)initWithGraphObjects:(id)a3;
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
- (id)conditionalWithPredicate:(id)a3 trueBranch:(id)a4 falseBranch:(id)a5;
- (id)createGradientSourceTensorWith:(id)a3 source:(id)a4;
- (id)createLossGradientSourceTensorWith:(id)a3 source:(id)a4 batchSize:(id)a5;
- (id)description;
- (id)resultTensorsForLayer:(id)a3 graphLayerList:(id)a4;
- (id)sourceTensorsForLayer:(id)a3 graphLayerList:(id)a4;
- (void)addGraphNodes:(id)a3 withControlTreeNode:(id)a4;
- (void)allocateDeviceMemoryForTensor:(id)a3 device:(id)a4;
- (void)checkAndResetTensorsAssociatedWithLayer:(id)a3 sources:(id)a4;
- (void)createVariableLengthSequenceTensorsForLayer:(id)a3 withVariableSequenceLength:(id)a4;
- (void)dealloc;
- (void)enumerateInputsUsingBlock:(id)a3;
- (void)enumerateLayersUsingBlock:(id)a3;
- (void)enumerateOutputsUsingBlock:(id)a3;
- (void)flattenConditionalLayer:(id)a3;
- (void)freeDeviceMemoryForTensorIfSafe:(id)a3 device:(id)a4;
- (void)insertPhis:(id)a3;
- (void)linkRelatedTensorsForConcatLayer:(id)a3 device:(id)a4;
- (void)linkSourceTensorsWithLayer:(id)a3 sources:(id)a4;
- (void)summarizedDOTDescription;
- (void)updateDeviceMemoryReadCountForGradientWithLayer:(id)a3 tensor:(id)a4 checkIfSourceNeeded:(BOOL)a5 checkIfResultNeeded:(BOOL)a6;
- (void)updateDeviceMemoryReadCountForTensor:(id)a3;
- (void)updateLSTMLayersForVariableSequenceLengthInGraph:(id)a3 withInputData:(id)a4;
- (void)updateOutputTensorsDeviceMemoryWithData:(id)a3;
- (void)writeAsyncToDevice:(id)a3 dataForTensors:(id)a4;
@end

@implementation MLCGraph

+ (MLCGraph)graphWithGraphObjects:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithGraphObjects:v4];

  return v5;
}

+ (MLCGraph)graph
{
  v2 = objc_opt_new();

  return v2;
}

- (MLCGraph)initWithGraphObjects:(id)a3
{
  v103 = *MEMORY[0x277D85DE8];
  v5 = a3;
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

    objc_storeStrong(&v7->_graphObjects, a3);
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

    v72 = 1;
    v7->_allocateDeviceMemoryForTensorsInGraph = 1;
    v25 = [v8 mutableCopy];
    freeResourceList = v7->_freeResourceList;
    v7->_freeResourceList = v25;

    if ([v5 count])
    {
      v27 = 0;
      v71 = v5;
      v72 = 1;
      v28 = 0x278A68000uLL;
      v76 = v7;
      do
      {
        v73 = v27;
        v29 = [v5 objectAtIndexedSubscript:v27];
        if ([v29 nextLayerID] > v72)
        {
          v72 = [v29 nextLayerID];
        }

        v7->_staticBatchSizeInGraph &= [v29 staticBatchSizeInGraph];
        v30 = [v29 graphLayerList];
        v31 = [v30 count];

        if (v31)
        {
          v32 = 0;
          do
          {
            v33 = [v29 graphLayerList];
            v34 = [v33 objectAtIndexedSubscript:v32];

            v35 = *(v28 + 2776);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(MLCGraph *)v7 flattenConditionalLayer:v34];
            }

            else
            {
              v36 = [(MLCGraph *)v7 graphLayerList];
              [v36 addObject:v34];
            }

            ++v32;
            v37 = [v29 graphLayerList];
            v38 = [v37 count];
          }

          while (v32 < v38);
        }

        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v39 = [v29 rootLevelTensorNodes];
        v40 = [v39 countByEnumeratingWithState:&v93 objects:v102 count:16];
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
                objc_enumerationMutation(v39);
              }

              [(NSMutableArray *)v7->_rootLevelTensorNodes addObject:*(*(&v93 + 1) + 8 * i)];
            }

            v41 = [v39 countByEnumeratingWithState:&v93 objects:v102 count:16];
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
              v51 = [v29 layerChildMap];
              v52 = [v51 objectForKeyedSubscript:v49];

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
              v63 = [v29 layerParentMap];
              v64 = [v63 objectForKeyedSubscript:v61];

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
        v5 = v71;
        v28 = 0x278A68000;
        v7 = v76;
      }

      while (v73 + 1 < [v71 count]);
    }

    v7->_nextLayerID = v72;
  }

  v69 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)dealloc
{
  v2 = self;
  v104 = *MEMORY[0x277D85DE8];
  if ([(NSMutableArray *)self->_graphLayerList count])
  {
    v3 = 0;
    v4 = MEMORY[0x277CBEBF8];
    while (1)
    {
      v5 = [(NSMutableArray *)v2->_graphLayerList objectAtIndexedSubscript:v3];
      [v5 resetLayerID];
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v6 = [v5 sourceTensors];
      v7 = [v6 countByEnumeratingWithState:&v97 objects:v103 count:16];
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
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v97 + 1) + 8 * i);
            v12 = [v11 childLayers];
            [v12 removeAllObjects];

            v13 = [v11 parentLayers];
            [v13 removeAllObjects];
          }

          v8 = [v6 countByEnumeratingWithState:&v97 objects:v103 count:16];
        }

        while (v8);
      }

      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v14 = [v5 resultTensors];
      v15 = [v14 countByEnumeratingWithState:&v93 objects:v102 count:16];
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
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v93 + 1) + 8 * j);
            v20 = [v19 childLayers];
            [v20 removeAllObjects];

            v21 = [v19 parentLayers];
            [v21 removeAllObjects];
          }

          v16 = [v14 countByEnumeratingWithState:&v93 objects:v102 count:16];
        }

        while (v16);
      }

      v22 = [v5 intermediateGradientTensors];
      [v22 removeAllObjects];

      [v5 setIntermediateGradientTensorIndex:0];
      [v5 setIntermediateSumLayer:0];
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v23 = [v5 fusedLayers];
      v24 = [v23 countByEnumeratingWithState:&v89 objects:v101 count:16];
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
              objc_enumerationMutation(v23);
            }

            v28 = *(*(&v89 + 1) + 8 * k);
            v29 = [v4 mutableCopy];
            [v28 setDeviceOps:v29];
          }

          v25 = [v23 countByEnumeratingWithState:&v89 objects:v101 count:16];
        }

        while (v25);
      }

      v30 = [v5 fusedLayers];
      if ([v30 count])
      {
        v31 = 1;
      }

      else
      {
        v31 = [v5 skipLayer];
      }

      v32 = [(MLCGraph *)v2 device];
      if (![v32 type])
      {
        goto LABEL_30;
      }

      v33 = [(MLCGraph *)v2 device];
      if ([v33 type] == 1)
      {
        break;
      }

      v73 = [(MLCGraph *)v2 device];
      if ([v73 type] == 2)
      {
        v74 = [(MLCGraph *)v2 device];
        [v74 gpuDevices];
        v75 = v31;
        v77 = v76 = v2;
        v87 = [v77 count];

        v2 = v76;
        v31 = v75;

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
      if (v31)
      {
        v78 = [v5 sourceTensors];
        [v78 removeAllObjects];

        v79 = [v5 resultTensors];
        [v79 removeAllObjects];

        v80 = [v5 sourceGradientTensors];
        [v80 removeAllObjects];

        v81 = [v5 resultGradientTensors];
        [v81 removeAllObjects];

        v82 = [v5 fusedLayers];
        v83 = [v82 count];

        if (v83)
        {
          v84 = [v5 fusedLayers];
          [v84 removeAllObjects];
        }

        v85 = [v4 mutableCopy];
        [v5 setDeviceOps:v85];
      }

      [v5 unlinkAssociatedTensors];

      if (++v3 >= [(NSMutableArray *)v2->_graphLayerList count])
      {
        goto LABEL_59;
      }
    }

LABEL_30:
LABEL_31:
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v31 = 1;
    }

    v34 = [v5 sourceTensors];
    v35 = [v34 count];

    if (v35)
    {
      v36 = 0;
      do
      {
        v37 = [v5 sourceTensors];
        v38 = [v37 objectAtIndexedSubscript:v36];
        v39 = [v38 sharedMemoryTensor];

        if (v39)
        {
          v40 = [v5 sourceTensors];
          v41 = [v40 objectAtIndexedSubscript:v36];
          v42 = [v41 deviceMemory];
          [v42 removeAllObjects];

          v43 = [v5 sourceTensors];
          v44 = [v43 objectAtIndexedSubscript:v36];
          [v44 setSharedMemoryTensor:0];
        }

        ++v36;
        v45 = [v5 sourceTensors];
        v46 = [v45 count];
      }

      while (v36 < v46);
    }

    v47 = [v5 resultTensors];
    v48 = [v47 count];

    if (v48)
    {
      v49 = 0;
      do
      {
        v50 = [v5 resultTensors];
        v51 = [v50 objectAtIndexedSubscript:v49];
        v52 = [v51 sharedMemoryTensor];

        if (v52)
        {
          v53 = [v5 resultTensors];
          v54 = [v53 objectAtIndexedSubscript:v49];
          v55 = [v54 deviceMemory];
          [v55 removeAllObjects];

          v56 = [v5 resultTensors];
          v57 = [v56 objectAtIndexedSubscript:v49];
          [v57 setSharedMemoryTensor:0];
        }

        ++v49;
        v58 = [v5 resultTensors];
        v59 = [v58 count];
      }

      while (v49 < v59);
    }

    v60 = [v5 resultGradientTensors];
    v61 = [v60 count];

    if (v61)
    {
      v62 = 0;
      do
      {
        v63 = [v5 resultGradientTensors];
        v64 = [v63 objectAtIndexedSubscript:v62];
        v65 = [v64 sharedMemoryTensor];

        if (v65)
        {
          v66 = [v5 resultGradientTensors];
          v67 = [v66 objectAtIndexedSubscript:v62];
          v68 = [v67 deviceMemory];
          [v68 removeAllObjects];

          v69 = [v5 resultGradientTensors];
          v70 = [v69 objectAtIndexedSubscript:v62];
          [v70 setSharedMemoryTensor:0];
        }

        ++v62;
        v71 = [v5 resultGradientTensors];
        v72 = [v71 count];
      }

      while (v62 < v72);
    }

    goto LABEL_54;
  }

LABEL_59:
  [(MLCGraph *)v2 addOutputs:0];
  v88.receiver = v2;
  v88.super_class = MLCGraph;
  [(MLCGraph *)&v88 dealloc];
  v86 = *MEMORY[0x277D85DE8];
}

- (id)createGradientSourceTensorWith:(id)a3 source:(id)a4
{
  if (a4)
  {
    v4 = [a4 descriptor];
    v5 = [MLCTensor tensorWithDescriptor:v4];
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

- (id)createLossGradientSourceTensorWith:(id)a3 source:(id)a4 batchSize:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v7)
  {
    v9 = [MEMORY[0x277CBEBF8] mutableCopy];
    v10 = [v7 descriptor];
    v11 = [v10 shape];
    v12 = [v11 count];

    if (v12)
    {
      v13 = 0;
      do
      {
        v14 = [v7 descriptor];
        v15 = [v14 shape];
        v16 = [v15 objectAtIndex:v13];

        if (v13)
        {
          v17 = v16;
        }

        else
        {
          v17 = v8;
        }

        [v9 setObject:v17 atIndexedSubscript:v13];

        ++v13;
        v18 = [v7 descriptor];
        v19 = [v18 shape];
        v20 = [v19 count];
      }

      while (v13 < v20);
    }

    v21 = [v7 descriptor];
    v22 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v9, [v21 dataType]);

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

- (void)checkAndResetTensorsAssociatedWithLayer:(id)a3 sources:(id)a4
{
  v36 = a3;
  v5 = a4;
  v6 = [v36 sourceTensors];
  v7 = [v6 count];

  v8 = [v36 sourceTensors];
  v9 = [v8 count];

  if (!v9 || ([v36 sourceTensors], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, !v11))
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
    v13 = [v36 sourceTensors];
    v14 = [v13 objectAtIndexedSubscript:v12];
    v15 = [v5 objectAtIndexedSubscript:v12];

    if (v14 != v15)
    {
      break;
    }

    ++v12;
    v16 = [v36 sourceTensors];
    v17 = [v16 count];

    if (v12 >= v17)
    {
      goto LABEL_6;
    }
  }

  v27 = [v36 sourceTensors];
  v28 = [v27 count];

  if (v28)
  {
    v29 = 0;
    do
    {
      v30 = [v36 sourceTensors];
      v31 = [v30 objectAtIndexedSubscript:v29];
      v32 = [v5 objectAtIndexedSubscript:v29];
      v33 = [v31 doesShapeMatchWithTensor:v32];

      if ((v33 & 1) == 0)
      {
        goto LABEL_7;
      }

      ++v29;
      v34 = [v36 sourceTensors];
      v35 = [v34 count];
    }

    while (v29 < v35);
  }

  if (!v7)
  {
LABEL_7:
    if ([v36 isUpdatable])
    {
      v18 = [v36 sourceTensors];
      v19 = [v18 count];

      if (v19)
      {
        v20 = [v36 device];
        v21 = [v20 computeEngine];
        [v21 synchronizeUpdatesForLayer:v36];
      }
    }

    v22 = [v36 sourceTensors];
    [v22 removeAllObjects];

    v23 = [v36 resultTensors];
    [v23 removeAllObjects];

    v24 = [v36 sourceGradientTensors];
    [v24 removeAllObjects];

    v25 = [v36 resultGradientTensors];
    [v25 removeAllObjects];

    v26 = [MEMORY[0x277CBEBF8] mutableCopy];
    [v36 setDeviceOps:v26];
    goto LABEL_11;
  }

  v26 = [v36 sourceTensors];
  [v26 removeAllObjects];
LABEL_11:

LABEL_12:
}

- (void)linkSourceTensorsWithLayer:(id)a3 sources:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(MLCGraph *)self nextLayerID];
  [(MLCGraph *)self setNextLayerID:v8 + 1];
  [v6 assignLayerID:v8];
  v9 = MEMORY[0x277CBEBF8];
  v10 = [MEMORY[0x277CBEBF8] mutableCopy];
  v11 = [(MLCGraph *)self layerChildMap];
  v12 = [v6 label];
  [v11 setObject:v10 forKeyedSubscript:v12];

  v13 = [v9 mutableCopy];
  v14 = [(MLCGraph *)self layerParentMap];
  v15 = [v6 label];
  [v14 setObject:v13 forKeyedSubscript:v15];

  v16 = [v6 sourceTensors];
  v40 = [v16 count];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = v7;
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
        v19 = [v18 childLayers];
        [v19 addObject:v6];

        if (!v40)
        {
          v20 = [v6 sourceTensors];
          [v20 addObject:v18];
        }

        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v42 = v18;
        v21 = [v18 parentLayers];
        v22 = [v21 countByEnumeratingWithState:&v43 objects:v51 count:16];
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
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v43 + 1) + 8 * j);
              layerParentMap = self->_layerParentMap;
              v28 = [v6 label];
              v29 = [(NSMutableDictionary *)layerParentMap objectForKeyedSubscript:v28];

              v30 = [v26 label];
              [v29 addObject:v30];

              layerChildMap = self->_layerChildMap;
              v32 = [v26 label];
              v33 = [(NSMutableDictionary *)layerChildMap objectForKeyedSubscript:v32];

              v34 = [v6 label];
              [v33 addObject:v34];
            }

            v23 = [v21 countByEnumeratingWithState:&v43 objects:v51 count:16];
          }

          while (v23);
        }

        v35 = [v42 parentLayers];
        v36 = [v35 count];

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

- (BOOL)checksBeforeAddLayerInGraph:(id)a3 sources:(id)a4 forTraining:(BOOL)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = [v9 resultTensors];
  v12 = [v11 count];

  if (v12 && ([(MLCGraph *)self graphLayerList], v13 = objc_claimAutoreleasedReturnValue(), v14 = [(MLCGraph *)self isLayerInGraphLayerList:v9 graphLayerList:v13], v13, v14))
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCGraph checksBeforeAddLayerInGraph:sources:forTraining:];
    }
  }

  else if ([v9 layerID])
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCGraph checksBeforeAddLayerInGraph:sources:forTraining:];
    }
  }

  else if ([v10 count])
  {
    if ([v9 isSupportedShapeForTensorSources:v10])
    {
      if (a5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
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
        v23 = v9;
        v24 = 2112;
        v25 = v10;
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
    v11 = [v9 sourceGradientTensors];
    v12 = [v11 count];

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
          v17 = [v9 sourceGradientTensors];
          [v17 setObject:v16 atIndexedSubscript:v13];

          v18 = [v9 sourceGradientTensors];
          v19 = [v18 objectAtIndexedSubscript:v13];
          [v19 setSplitOffset:v14];

          v20 = [v9 dimension];
          v21 = [v9 sourceGradientTensors];
          v22 = [v21 objectAtIndexedSubscript:v13];
          [v22 setSplitDimension:v20];

          v23 = [v9 sourceGradientTensors];
          v24 = [v23 objectAtIndexedSubscript:v13];
          v25 = [v24 descriptor];
          v26 = [v25 shape];
          v27 = [v26 objectAtIndexedSubscript:{objc_msgSend(v9, "dimension")}];
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
    v11 = [v9 sourceGradientTensors];
    v12 = [v11 count];

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
          v17 = [v9 sourceGradientTensors];
          [v17 setObject:v16 atIndexedSubscript:v13];

          v18 = [v9 sourceGradientTensors];
          v19 = [v18 objectAtIndexedSubscript:v13];
          [v19 setSplitOffset:v14];

          v20 = [v9 dimension];
          v21 = [v9 sourceGradientTensors];
          v22 = [v21 objectAtIndexedSubscript:v13];
          [v22 setSplitDimension:v20];

          v23 = [v9 sourceGradientTensors];
          v24 = [v23 objectAtIndexedSubscript:v13];
          v25 = [v24 descriptor];
          v26 = [v25 shape];
          v27 = [v26 objectAtIndexedSubscript:{objc_msgSend(v9, "dimension")}];
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

- (BOOL)bindAndWriteData:(id)a3 forInputs:(id)a4 toDevice:(id)a5 batchSize:(unint64_t)a6 synchronous:(BOOL)a7 skipWrite:(BOOL)a8
{
  v71 = a7;
  v99 = *MEMORY[0x277D85DE8];
  v82 = a3;
  v10 = a4;
  v74 = a5;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = v10;
  v77 = [v10 countByEnumeratingWithState:&v92 objects:v98 count:16];
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
        v14 = [v13 childLayers];
        v15 = [v14 count];

        if (v15)
        {
          v16 = 0;
          while (1)
          {
            v17 = [v13 childLayers];
            v18 = [v17 objectAtIndexedSubscript:v16];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              break;
            }

LABEL_19:
            ++v16;
            v32 = [v13 childLayers];
            v33 = [v32 count];

            if (v16 >= v33)
            {
              goto LABEL_20;
            }
          }

          v20 = [v13 childLayers];
          v21 = [v20 objectAtIndexedSubscript:v16];

          v22 = [v21 sourceTensors];
          if ([v22 count] == 2)
          {

            goto LABEL_12;
          }

          v23 = [v21 sourceTensors];
          v24 = [v23 count];

          if (v24 == 4)
          {
LABEL_12:
            v25 = [v21 sourceTensors];
            v26 = [v25 count];
            v27 = [v21 sourceTensors];
            v28 = v27;
            if (v26 == 2)
            {
              v29 = 1;
            }

            else
            {
              v29 = 3;
            }

            v30 = [v27 objectAtIndexedSubscript:v29];

            if (v30 == v13)
            {
              v31 = [v82 objectForKeyedSubscript:v12];
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
  v34 = v82;
  v35 = [v34 countByEnumeratingWithState:&v88 objects:v97 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v89;
    v38 = &selRef_numberWithShort_;
    v39 = v74;
    v40 = a8;
    v41 = a6;
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
            v47 = [v45 childLayers];
            v48 = [v47 countByEnumeratingWithState:&v84 objects:v96 count:16];
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
                    objc_enumerationMutation(v47);
                  }

                  v52 = *(*(&v84 + 1) + 8 * j);
                  v53 = [v52 device];

                  if (v53)
                  {
                    v54 = [v52 device];

                    v46 = v54;
                    goto LABEL_40;
                  }
                }

                v49 = [v47 countByEnumeratingWithState:&v84 objects:v96 count:16];
                if (v49)
                {
                  continue;
                }

                break;
              }

LABEL_40:
              v39 = v74;
              v40 = a8;
              v41 = a6;
            }

            v34 = v76;
          }

          v55 = [v46 computeEngine];
          v56 = objc_opt_respondsToSelector();

          if (v56)
          {
            v57 = v41;
            if (!v41)
            {
              v57 = [v45 calculateBatchSizeToUse:0];
            }

            v58 = [v46 computeEngine];
            [v58 selectDevicesWithBatchSize:v57 calledfromBindAndWrite:1];
          }

          if ([v46 type])
          {
            v59 = [v46 computeEngine];
            v60 = [v59 needToAllocateDeviceMemoryForTensor:v45];

            if (v60)
            {
              [v45 allocateDeviceMemory:v46];
            }
          }

          else if (([v45 isLayerParameter] & 1) == 0)
          {
            v61 = [v44 data];
            [v45 setData:v61];

            v62 = [v45 data];
            v63 = [v45 deviceMemory];
            [v63 setObject:v62 atIndexedSubscript:0];
          }

          if (!v40)
          {
            v64 = [v45 calculateBatchSizeToUse:v41];
            if ([v45 isLayerParameter])
            {
              [v45 bindAndWriteData:v44 toDevice:v46];
            }

            else
            {
              v65 = [v44 data];
              [v45 setData:v65];

              if (v71)
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
    v39 = v74;
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
  v6 = [(MLCGraph *)self graphObjects];
  v7 = [(MLCGraph *)self graphLayerList];
  v8 = [(MLCGraph *)self allInputs];
  v9 = [(MLCGraph *)self allOutputs];
  v10 = [(MLCGraph *)self device];
  v11 = [v3 stringWithFormat:@"%@: { graphObjects=%@ : graphLayerList=%@ : allInputs=%@ : allOutputs=%@ : device=%@}", v5, v6, v7, v8, v9, v10];

  return v11;
}

- (void)writeAsyncToDevice:(id)a3 dataForTensors:(id)a4
{
  v11 = a3;
  v5 = a4;
  if ([v5 count])
  {
    v6 = 0;
    do
    {
      v7 = [v11 computeEngine];
      v8 = [v5 objectAtIndexedSubscript:v6];
      [v7 allocateDeviceMemoryForTensor:v8];

      v9 = [v11 computeEngine];
      v10 = [v5 objectAtIndexedSubscript:v6];
      [v9 broadcastTensor:v10];

      ++v6;
    }

    while (v6 < [v5 count]);
  }
}

- (void)createVariableLengthSequenceTensorsForLayer:(id)a3 withVariableSequenceLength:(id)a4
{
  v36 = a3;
  v5 = a4;
  v6 = [MEMORY[0x277CBEBF8] mutableCopy];
  v7 = [v5 length];
  if (v7 >= 4)
  {
    v8 = 0;
    v9 = v7 >> 2;
    do
    {
      v10 = [v5 bytes];
      v11 = [MEMORY[0x277CCABB0] numberWithInt:*(v10 + 4 * v8)];
      [v6 addObject:v11];

      ++v8;
    }

    while (v9 != v8);
  }

  v12 = [v36 sourceTensors];
  v35 = [v12 objectAtIndexedSubscript:0];

  v13 = [v35 descriptor];
  v14 = [v13 shape];
  v15 = [v35 descriptor];
  v16 = +[MLCTensorDescriptor descriptorWithShape:sequenceLengths:sortedSequences:dataType:](MLCTensorDescriptor, "descriptorWithShape:sequenceLengths:sortedSequences:dataType:", v14, v6, 1, [v15 dataType]);
  v17 = [v36 sourceTensors];
  v18 = [v17 objectAtIndexedSubscript:0];
  [v18 setDescriptor:v16];

  v19 = [v36 resultTensors];
  v20 = [v19 objectAtIndexedSubscript:0];

  v21 = [v20 descriptor];
  v22 = [v21 shape];
  v23 = [v20 descriptor];
  v24 = +[MLCTensorDescriptor descriptorWithShape:sequenceLengths:sortedSequences:dataType:](MLCTensorDescriptor, "descriptorWithShape:sequenceLengths:sortedSequences:dataType:", v22, v6, 1, [v23 dataType]);
  v25 = [v36 resultTensors];
  v26 = [v25 objectAtIndexedSubscript:0];
  [v26 setDescriptor:v24];

  v27 = [v36 sourceGradientTensors];
  v28 = [v27 objectAtIndexedSubscript:0];

  v29 = [v28 descriptor];
  v30 = [v29 shape];
  v31 = [v28 descriptor];
  v32 = +[MLCTensorDescriptor descriptorWithShape:sequenceLengths:sortedSequences:dataType:](MLCTensorDescriptor, "descriptorWithShape:sequenceLengths:sortedSequences:dataType:", v30, v6, 1, [v31 dataType]);
  v33 = [v36 sourceGradientTensors];
  v34 = [v33 objectAtIndexedSubscript:0];
  [v34 setDescriptor:v32];
}

- (void)enumerateLayersUsingBlock:(id)a3
{
  v17 = a3;
  v4 = [(MLCGraph *)self graphLayerList];
  v5 = [v4 count];

  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = [(MLCGraph *)self graphLayerList];
      v8 = [v7 objectAtIndexedSubscript:v6];

      layerParentMap = self->_layerParentMap;
      v10 = [v8 label];
      v11 = [(NSMutableDictionary *)layerParentMap objectForKeyedSubscript:v10];
      layerChildMap = self->_layerChildMap;
      v13 = [v8 label];
      v14 = [(NSMutableDictionary *)layerChildMap objectForKeyedSubscript:v13];
      v17[2](v17, v8, v11, v14);

      ++v6;
      v15 = [(MLCGraph *)self graphLayerList];
      v16 = [v15 count];
    }

    while (v6 < v16);
  }
}

- (void)enumerateInputsUsingBlock:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
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
        v11 = [v10 descriptor];
        v12 = [v10 label];
        v13 = [v11 dataType];
        v14 = [v11 shape];
        v4[2](v4, v12, v13, v14);
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)enumerateOutputsUsingBlock:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MLCGraph *)self graphLayerList];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    v25 = self;
    do
    {
      v8 = [(MLCGraph *)self graphLayerList];
      v27 = v7;
      v9 = [v8 objectAtIndexedSubscript:v7];

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = v9;
      v10 = [v9 resultTensors];
      v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v28 + 1) + 8 * i);
            v16 = [v15 childLayers];
            v17 = [v16 count];

            if (!v17)
            {
              v18 = [v15 descriptor];
              v19 = [v15 label];
              v20 = [v18 dataType];
              v21 = [v18 shape];
              v4[2](v4, v19, v20, v21);
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v12);
      }

      v7 = v27 + 1;
      self = v25;
      v22 = [(MLCGraph *)v25 graphLayerList];
      v23 = [v22 count];
    }

    while (v27 + 1 < v23);
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (BOOL)isLayerInGraphLayerList:(id)a3 graphLayerList:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v7 = 0;
    do
    {
      v8 = [v6 objectAtIndexedSubscript:v7];

      v9 = v8 == v5;
      if (v9)
      {
        break;
      }

      ++v7;
    }

    while (v7 < [v6 count]);
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
  v5 = [(MLCLayer *)v4 isDebuggingEnabled];
  [(MLCLayer *)v4 setIsDebuggingEnabled:0 isPrivate:1];
  v6 = [(MLCGraph *)self graphLayerList];
  v7 = [(MLCGraph *)self resultTensorsForLayer:v4 graphLayerList:v6];

  [(MLCLayer *)v4 setIsDebuggingEnabled:v5 isPrivate:1];

  return v7;
}

- (NSArray)sourceTensorsForLayer:(MLCLayer *)layer
{
  v4 = layer;
  v5 = [(MLCGraph *)self graphLayerList];
  v6 = [(MLCGraph *)self sourceTensorsForLayer:v4 graphLayerList:v5];

  return v6;
}

- (id)resultTensorsForLayer:(id)a3 graphLayerList:(id)a4
{
  v6 = a3;
  if (![(MLCGraph *)self isLayerInGraphLayerList:v6 graphLayerList:a4])
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCGraph resultTensorsForLayer:graphLayerList:];
    }

    goto LABEL_11;
  }

  if ([v6 skipLayer] && (objc_msgSend(v6, "isLastFusedLayer") & 1) == 0)
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCGraph resultTensorsForLayer:graphLayerList:];
    }

LABEL_11:

    v14 = MEMORY[0x277CBEBF8];
    goto LABEL_12;
  }

  if ([v6 isDebuggingEnabled])
  {
    v7 = [v6 resultTensors];
    v8 = [v7 count];

    if (v8)
    {
      v9 = 0;
      do
      {
        v10 = [v6 resultTensors];
        v11 = [v10 objectAtIndexedSubscript:v9];
        [v11 synchronizeData];

        ++v9;
        v12 = [v6 resultTensors];
        v13 = [v12 count];
      }

      while (v9 < v13);
    }
  }

  v14 = [v6 resultTensors];
LABEL_12:

  return v14;
}

- (id)sourceTensorsForLayer:(id)a3 graphLayerList:(id)a4
{
  v6 = a3;
  if ([(MLCGraph *)self isLayerInGraphLayerList:v6 graphLayerList:a4])
  {
    v7 = [v6 sourceTensors];
  }

  else
  {
    v8 = +[MLCLog framework];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MLCGraph resultTensorsForLayer:graphLayerList:];
    }

    v7 = MEMORY[0x277CBEBF8];
  }

  return v7;
}

- (void)flattenConditionalLayer:(id)a3
{
  v4 = a3;
  v5 = [v4 sourceTensors];
  v6 = [v5 objectAtIndexedSubscript:0];

  v7 = [MLCControlTreeNode controlTreeNodeWithPredicate:v6 needToNegate:0];
  v8 = [v4 trueBranch];
  [(MLCGraph *)self addGraphNodes:v8 withControlTreeNode:v7];

  v10 = [MLCControlTreeNode controlTreeNodeWithPredicate:v6 needToNegate:1];

  v9 = [v4 falseBranch];
  [(MLCGraph *)self addGraphNodes:v9 withControlTreeNode:v10];

  [(MLCGraph *)self insertPhis:v4];
}

- (void)addGraphNodes:(id)a3 withControlTreeNode:(id)a4
{
  *&v23[5] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 graphLayerList];
  v9 = [v8 count];

  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      v11 = [v6 graphLayerList];
      v12 = [v11 objectAtIndexedSubscript:i];
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

      v15 = [v6 graphLayerList];
      v16 = [v15 objectAtIndexedSubscript:i];
      [v16 setConditionalTreeNode:v7];

      v17 = [(MLCGraph *)self graphLayerList];
      v18 = [v6 graphLayerList];
      v19 = [v18 objectAtIndexedSubscript:i];
      [v17 addObject:v19];
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)insertPhis:(id)a3
{
  v39[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 trueBranch];
  v6 = [v4 falseBranch];
  v7 = [v5 graphLayerList];
  v8 = [v7 count];

  v9 = [v6 graphLayerList];
  v10 = [v9 count];

  v11 = [v4 sourceTensors];
  v12 = [v11 objectAtIndexedSubscript:0];
  v13 = v4;
  v38 = [MLCControlTreeNode controlTreeNodeWithPredicate:v12 needToNegate:0];

  v14 = [v4 resultTensors];
  v15 = [v14 count];

  if (v15)
  {
    v16 = 0;
    v34 = v10 - 1;
    v35 = v8 - 1;
    v36 = self;
    v37 = v5;
    do
    {
      v17 = [v5 graphLayerList];
      v18 = [v17 objectAtIndexedSubscript:v35];
      v19 = [v18 resultTensors];
      v20 = [v19 objectAtIndexedSubscript:0];

      v21 = [v6 graphLayerList];
      v22 = [v21 objectAtIndexedSubscript:v34];
      [v22 resultTensors];
      v24 = v23 = v15;
      v25 = [v24 objectAtIndexedSubscript:0];

      v39[0] = v20;
      v39[1] = v25;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
      v27 = [v13 resultTensors];
      [v27 objectAtIndexedSubscript:v16];
      v28 = v6;
      v30 = v29 = v13;
      v31 = [MLCPhiLayer layerWithControlTreeNode:v38 sources:v26 resultTensor:v30];

      v13 = v29;
      v6 = v28;

      v32 = [(MLCGraph *)v36 graphLayerList];
      [v32 addObject:v31];

      v5 = v37;
      v15 = v23;

      ++v16;
    }

    while (v23 != v16);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (id)conditionalWithPredicate:(id)a3 trueBranch:(id)a4 falseBranch:(id)a5
{
  v22[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MLCConditionalLayer layerWithTrueBranch:v10 falseBranch:v11];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v13 = +[MLCLog framework];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MLCGraph conditionalWithPredicate:a2 trueBranch:? falseBranch:?];
    }
  }

  v14 = [v10 allOutputs];
  if ([v14 count])
  {
  }

  else
  {
    v15 = [v11 allOutputs];
    v16 = [v15 count];

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
  v18 = [(MLCGraph *)self nodeWithLayer:v12 source:v9];
  v22[0] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (NSArray)layers
{
  v2 = [(MLCGraph *)self graphLayerList];
  v3 = [v2 copy];

  return v3;
}

- (BOOL)checkPageAlignmentAndSizeForOutputs:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MLCGraph *)self device];
  v6 = [v5 type];

  if (v6 == 1)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v4;
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

          v14 = [v12 bytes];
          v15 = (NSPageSize() - 1) & v14;

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

- (void)updateOutputTensorsDeviceMemoryWithData:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v4 objectForKeyedSubscript:{v9, v17}];
        v11 = [(MLCGraph *)self allOutputs];
        v12 = [v11 objectForKeyedSubscript:v9];

        v13 = [v12 device];
        v14 = objc_autoreleasePoolPush();
        v15 = [v13 computeEngine];
        [v15 setDeviceMemoryForTensor:v12 data:v10];

        objc_autoreleasePoolPop(v14);
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)addInputs:(id)a3 lossLabels:(id)a4 lossLabelWeights:(id)a5
{
  v8 = a5;
  v9 = a4;
  [(MLCGraph *)self setAllInputs:a3];
  [(MLCGraph *)self setAllLossLabels:v9];

  [(MLCGraph *)self setAllLossLabelWeights:v8];
  return 1;
}

- (BOOL)addOutputs:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = [(MLCGraph *)self allOutputs];
  v6 = [v5 countByEnumeratingWithState:&v35 objects:v40 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        v11 = [(MLCGraph *)self allOutputs];
        v12 = [v11 objectForKeyedSubscript:v10];

        [v12 setComputeFlags:{objc_msgSend(v12, "computeFlags") & 0xFFFFFFFELL}];
      }

      v7 = [v5 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v7);
  }

  if (!v4)
  {
    goto LABEL_24;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v13 = v4;
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
        v21 = [v20 parentLayers];
        if ([v21 count])
        {
        }

        else
        {
          v22 = [v20 childLayers];
          v23 = [v22 count];

          if (!v23)
          {
            goto LABEL_21;
          }
        }

        v24 = [v20 sharedMemoryTensor];

        if (v24)
        {
          [v20 setSharedMemoryTensor:0];
          v25 = [v20 deviceMemory];
          [v25 removeAllObjects];
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
  [(MLCGraph *)self setAllOutputs:v4];
  v26 = 1;
LABEL_28:

  v29 = *MEMORY[0x277D85DE8];
  return v26;
}

- (BOOL)dispatchReadsForMultipleTensorOutputs:(id)a3 finalTensorInGraph:(id)a4 finalResultTensor:(id)a5 batchSize:(unint64_t)a6
{
  v51 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v37 = a5;
  v40 = v10;
  if (v9)
  {
    v47 = 0uLL;
    v48 = 0uLL;
    v45 = 0uLL;
    v46 = 0uLL;
    v11 = [v9 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v11)
    {
      v12 = v11;
      v38 = *v46;
      v13 = self;
      do
      {
        v14 = 0;
        do
        {
          if (*v46 != v38)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v45 + 1) + 8 * v14);
          v16 = v9;
          v17 = [v9 objectForKeyedSubscript:{v15, v37}];
          v18 = [(MLCGraph *)self allOutputs];
          v19 = [v18 objectForKeyedSubscript:v15];

          v20 = [v19 device];
          if (v10 && v19 == v10)
          {
            v21 = v37;

            v19 = v21;
          }

          v22 = [v19 calculateBatchSizeToUse:a6];
          v23 = [v20 computeEngine];
          v24 = [v17 data];
          [v23 dispatchReadTensor:v19 targetBuffer:objc_msgSend(v24 batchSize:{"bytes"), v22}];

          ++v14;
          v9 = v16;
          self = v13;
          v10 = v40;
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
    v25 = [(MLCGraph *)self allOutputs];
    v26 = [v25 countByEnumeratingWithState:&v41 objects:v49 count:16];
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
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v41 + 1) + 8 * i);
          v31 = [(MLCGraph *)self allOutputs];
          v32 = [v31 objectForKeyedSubscript:v30];

          v33 = [v32 device];
          v34 = [v33 computeEngine];
          [v34 synchronizeTensor:v32];
        }

        v27 = [v25 countByEnumeratingWithState:&v41 objects:v49 count:16];
      }

      while (v27);
    }

    v10 = v40;
  }

  v35 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)linkRelatedTensorsForConcatLayer:(id)a3 device:(id)a4
{
  v16 = a3;
  v4 = [v16 dimension];
  v5 = [v16 sourceTensors];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [v16 sourceTensors];
      v10 = [v9 objectAtIndexedSubscript:v8];

      [v10 setConcatOffset:v7];
      [v10 setConcatDimension:v4];
      v11 = [v10 descriptor];
      v12 = [v11 shape];
      v13 = [v12 objectAtIndexedSubscript:v4];
      v7 += [v13 unsignedIntegerValue];

      ++v8;
      v14 = [v16 sourceTensors];
      v15 = [v14 count];
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
    v193 = self;
    if (objc_opt_isKindOfClass())
    {
      v5 = self;
      v6 = [(MLCGraph *)v5 optimizer];

      if (v6)
      {
        v7 = [(MLCGraph *)v5 optimizer];
        v8 = objc_opt_class();
        v186 = NSStringFromClass(v8);
      }

      else
      {
        v186 = 0;
      }

      v11 = MEMORY[0x277CBEB98];
      v12 = [(MLCGraph *)v5 stopGradientTensorList];
      v13 = [v11 setWithArray:v12];

      v196 = v13;
    }

    else
    {
      v196 = v4;
      v186 = 0;
    }

    v14 = [MEMORY[0x277CBEB18] array];
    v243 = 0u;
    v244 = 0u;
    v245 = 0u;
    v246 = 0u;
    obj = [(MLCGraph *)v193 layers];
    v188 = [obj countByEnumeratingWithState:&v243 objects:v255 count:16];
    if (v188)
    {
      v15 = 0;
      v189 = *v244;
      v205 = v14;
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
          v206 = [v18 sourceTensors];
          v19 = [v206 countByEnumeratingWithState:&v239 objects:v254 count:16];
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
                  objc_enumerationMutation(v206);
                }

                v23 = *(*(&v239 + 1) + 8 * v22);
                v24 = [v23 parentLayers];
                v25 = [v24 count];

                if (!v25)
                {
                  v26 = v15;
                  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"invisibleInput%lu [style = invis]", v15];
                  [v14 addObject:v27];

                  v28 = [MEMORY[0x277CCAB68] string];
                  v29 = [v23 label];
                  [v28 appendString:v29];

                  [v28 appendString:@" ["];
                  v30 = [v23 descriptor];
                  v31 = [v30 shape];
                  v32 = [v31 count];

                  if (v32)
                  {
                    v33 = 0;
                    v34 = 1;
                    do
                    {
                      v35 = [v23 descriptor];
                      v36 = [v35 shape];
                      v37 = [v36 objectAtIndexedSubscript:v33];
                      [v28 appendFormat:@"%lu", objc_msgSend(v37, "unsignedLongValue")];

                      v38 = [v23 descriptor];
                      v39 = [v38 shape];
                      v40 = [v39 count];

                      if (v40 > v34)
                      {
                        [v28 appendString:{@", "}];
                      }

                      v33 = v34;
                      v41 = [v23 descriptor];
                      v42 = [v41 shape];
                      v43 = [v42 count];

                      ++v34;
                    }

                    while (v43 > v33);
                  }

                  [v28 appendString:@"]"];
                  v44 = v26;
                  v18 = v209;
                  v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"invisibleInput%lu -> %lu [label=<<FONT POINT-SIZE=10>%@</FONT>>]", v44, objc_msgSend(v209, "layerID"), v28];
                  [v14 addObject:v45];

                  v15 = v44 + 1;
                  v21 = v197;
                  v20 = v201;
                }

                ++v22;
              }

              while (v22 != v20);
              v20 = [v206 countByEnumeratingWithState:&v239 objects:v254 count:16];
            }

            while (v20);
          }

          if ([v18 isLastLayer])
          {
            v237 = 0u;
            v238 = 0u;
            v235 = 0u;
            v236 = 0u;
            v198 = [v18 resultTensors];
            v207 = [v198 countByEnumeratingWithState:&v235 objects:v253 count:16];
            if (v207)
            {
              v202 = *v236;
              do
              {
                for (i = 0; i != v207; i = i + 1)
                {
                  if (*v236 != v202)
                  {
                    objc_enumerationMutation(v198);
                  }

                  v47 = *(*(&v235 + 1) + 8 * i);
                  v48 = v15;
                  v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"invisibleOutput%lu [style = invis]", v15, v184];
                  [v14 addObject:v49];

                  v50 = [MEMORY[0x277CCAB68] string];
                  v51 = [v47 label];
                  [v50 appendString:v51];

                  [v50 appendString:@" ["];
                  v52 = [v47 descriptor];
                  v53 = [v52 shape];
                  v54 = [v53 count];

                  if (v54)
                  {
                    v55 = 0;
                    v56 = 1;
                    do
                    {
                      v57 = [v47 descriptor];
                      v58 = [v57 shape];
                      v59 = [v58 objectAtIndexedSubscript:v55];
                      [v50 appendFormat:@"%lu", objc_msgSend(v59, "unsignedLongValue")];

                      v60 = [v47 descriptor];
                      v61 = [v60 shape];
                      v62 = [v61 count];

                      if (v62 > v56)
                      {
                        [v50 appendString:{@", "}];
                      }

                      v55 = v56;
                      v63 = [v47 descriptor];
                      v64 = [v63 shape];
                      v65 = [v64 count];

                      ++v56;
                    }

                    while (v65 > v55);
                  }

                  [v50 appendString:@"]"];
                  v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu -> invisibleOutput%lu [label=<<FONT POINT-SIZE=10>%@</FONT>>]", objc_msgSend(v209, "layerID"), v48, v50];
                  [v14 addObject:v66];

                  v15 = v48 + 1;
                }

                v207 = [v198 countByEnumeratingWithState:&v235 objects:v253 count:16];
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
            v68 = [v67 lossLabels];
            if (v68)
            {
              v69 = v68;
              v70 = [v68 parentLayers];
              v71 = [v70 count];

              if (!v71)
              {
LABEL_51:
                v76 = [MEMORY[0x277CCACA8] stringWithFormat:@"invisibleLabel%lu [style = invis]", v191];
                [v14 addObject:v76];

                v73 = [MEMORY[0x277CCAB68] string];
                v77 = [v69 label];
                [v73 appendString:v77];

                [v73 appendString:@" ["];
                v78 = [v69 descriptor];
                v79 = [v78 shape];
                v80 = [v79 count];

                if (v80)
                {
                  v81 = 0;
                  v82 = 1;
                  do
                  {
                    v83 = [v69 descriptor];
                    v84 = [v83 shape];
                    v85 = [v84 objectAtIndexedSubscript:v81];
                    [v73 appendFormat:@"%lu", objc_msgSend(v85, "unsignedLongValue")];

                    v86 = [v69 descriptor];
                    v87 = [v86 shape];
                    v88 = [v87 count];

                    if (v88 > v82)
                    {
                      [v73 appendString:{@", "}];
                    }

                    v81 = v82;
                    v89 = [v69 descriptor];
                    v90 = [v89 shape];
                    v91 = [v90 count];

                    ++v82;
                  }

                  while (v91 > v81);
                }

                [v73 appendString:@"]"];
                v92 = [MEMORY[0x277CCACA8] stringWithFormat:@"invisibleLabel%lu -> %lu [label=<<FONT POINT-SIZE=10>%@</FONT>>]", v191, objc_msgSend(v67, "layerID"), v73];
                [v14 addObject:v92];

                ++v191;
                v18 = v209;
                goto LABEL_58;
              }
            }

            else
            {
              v72 = [(MLCGraph *)v193 allLossLabels];
              v73 = [v72 allKeys];

              if ([v73 count])
              {
                v74 = [v73 objectAtIndexedSubscript:0];
                v75 = [(MLCGraph *)v193 allLossLabels];
                v69 = [v75 objectForKeyedSubscript:v74];

                v14 = v205;
                goto LABEL_51;
              }

              v69 = 0;
              v14 = v205;
LABEL_58:
            }
          }

          v93 = MEMORY[0x277CCACA8];
          v94 = [v18 layerID];
          v95 = [v18 summarizedDOTDescription];
          v96 = [v93 stringWithFormat:@"%lu [fillcolor=lightblue label=%@]", v94, v95];
          [v14 addObject:v96];

          v208 = [MEMORY[0x277CBEB58] set];
          v97 = [MEMORY[0x277CBEB38] dictionary];
          v98 = [MEMORY[0x277CBEB18] array];
          v99 = [v18 fusedLayers];
          v100 = [v99 count];

          if (v100)
          {
            v101 = [v18 fusedLayers];
            [v98 addObjectsFromArray:v101];

            v102 = v18;
            v231 = 0u;
            v232 = 0u;
            v233 = 0u;
            v234 = 0u;
            v199 = v102;
            v103 = [v102 fusedLayers];
            v104 = [v103 countByEnumeratingWithState:&v231 objects:v252 count:16];
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
                    objc_enumerationMutation(v103);
                  }

                  v108 = *(*(&v231 + 1) + 8 * j);
                  v109 = [v108 sourceTensors];
                  if ([v109 count] != 1)
                  {
                    [MLCGraph summarizedDOTDescription];
                  }

                  v110 = [v108 sourceTensors];
                  v111 = [v110 objectAtIndexedSubscript:0];

                  if ([v196 containsObject:v111])
                  {
                    v112 = [v111 childLayers];
                    [v208 addObjectsFromArray:v112];
                  }

                  v230 = 0;
                  v113 = [v199 layerID];
                  v184 = [v108 layerID];
                  hashCombine_9(&v230, v114, v115, v116, v117, v118, v119, v120, v113);
                  v121 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v230];
                  [v97 setObject:v111 forKey:v121];
                }

                v105 = [v103 countByEnumeratingWithState:&v231 objects:v252 count:16];
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
            v199 = [v18 resultTensors];
            v194 = [v199 countByEnumeratingWithState:&v226 objects:v251 count:16];
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
                    objc_enumerationMutation(v199);
                  }

                  v203 = v123;
                  v124 = *(*(&v226 + 1) + 8 * v123);
                  if ([v122 containsObject:v124])
                  {
                    v125 = [v124 childLayers];
                    [v208 addObjectsFromArray:v125];
                  }

                  v126 = MEMORY[0x277CBEB98];
                  v127 = [(MLCGraph *)v193 layers];
                  v128 = [v126 setWithArray:v127];

                  v224 = 0u;
                  v225 = 0u;
                  v222 = 0u;
                  v223 = 0u;
                  v129 = [v124 childLayers];
                  v130 = [v129 countByEnumeratingWithState:&v222 objects:v250 count:16];
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
                          objc_enumerationMutation(v129);
                        }

                        v134 = *(*(&v222 + 1) + 8 * k);
                        if ([v128 containsObject:v134])
                        {
                          [v98 addObject:v134];
                        }
                      }

                      v131 = [v129 countByEnumeratingWithState:&v222 objects:v250 count:16];
                    }

                    while (v131);
                  }

                  v220 = 0u;
                  v221 = 0u;
                  v218 = 0u;
                  v219 = 0u;
                  v135 = [v124 childLayers];
                  v136 = [v135 countByEnumeratingWithState:&v218 objects:v249 count:16];
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
                          objc_enumerationMutation(v135);
                        }

                        v140 = *(*(&v218 + 1) + 8 * m);
                        v230 = 0;
                        v141 = [v209 layerID];
                        v184 = [v140 layerID];
                        hashCombine_9(&v230, v142, v143, v144, v145, v146, v147, v148, v141);
                        v149 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v230];
                        [v97 setObject:v124 forKey:v149];
                      }

                      v137 = [v135 countByEnumeratingWithState:&v218 objects:v249 count:16];
                    }

                    while (v137);
                  }

                  v14 = v205;
                  v123 = v203 + 1;
                  v122 = v196;
                }

                while ((v203 + 1) != v194);
                v194 = [v199 countByEnumeratingWithState:&v226 objects:v251 count:16];
              }

              while (v194);
            }
          }

          v216 = 0u;
          v217 = 0u;
          v214 = 0u;
          v215 = 0u;
          v195 = v98;
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
                v156 = [v151 layerID];
                v157 = [v151 summarizedDOTDescription];
                v158 = [v155 stringWithFormat:@"%lu [fillcolor=lightblue label=%@]", v156, v157];
                [v14 addObject:v158];

                v230 = 0;
                LOBYTE(v158) = [v209 layerID];
                v185 = [v151 layerID];
                hashCombine_9(&v230, v159, v160, v161, v162, v163, v164, v165, v158);
                v166 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v230];
                v167 = [v97 objectForKey:v166];

                v168 = [v167 descriptor];
                v169 = [v168 shape];

                v170 = [MEMORY[0x277CCAB68] string];
                v171 = [v167 label];
                [v170 appendString:v171];

                [v170 appendString:@"\n"];
                [v170 appendString:@" ["];
                if ([v169 count])
                {
                  v172 = 0;
                  v173 = 1;
                  do
                  {
                    v174 = [v169 objectAtIndexedSubscript:v172];
                    [v170 appendFormat:@"%lu", objc_msgSend(v174, "unsignedLongValue"), v185];

                    if ([v169 count] > v173)
                    {
                      [v170 appendString:{@", "}];
                    }

                    v172 = v173++;
                  }

                  while ([v169 count] > v172);
                }

                [v170 appendString:@"]"];
                v175 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu -> %lu [style=%@ label=<<FONT POINT-SIZE=10>%@</FONT>>]", objc_msgSend(v209, "layerID"), objc_msgSend(v151, "layerID"), v154, v170];
                v14 = v205;
                [v205 addObject:v175];
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
    v177 = v14;
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

          [(__CFString *)v10 appendFormat:@"\t%@;\n", *(*(&v210 + 1) + 8 * ii), v184];
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

- (void)updateLSTMLayersForVariableSequenceLengthInGraph:(id)a3 withInputData:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v34 = a4;
  v5 = [(MLCGraph *)self lstmLayerIndexList];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v8 = [(MLCGraph *)self lstmLayerIndexList];
      v9 = [v8 objectAtIndexedSubscript:v7];
      v10 = [v9 unsignedIntegerValue];

      v11 = [(MLCGraph *)self graphLayerList];
      v12 = [v11 objectAtIndexedSubscript:v10];

      v13 = [v12 sourceTensors];
      if ([v13 count] == 2)
      {
        break;
      }

      v14 = [v12 sourceTensors];
      v15 = [v14 count];

      if (v15 == 4)
      {
        goto LABEL_6;
      }

LABEL_19:

      ++v7;
      v31 = [(MLCGraph *)self lstmLayerIndexList];
      v32 = [v31 count];

      if (v7 >= v32)
      {
        goto LABEL_20;
      }
    }

LABEL_6:
    v35 = v7;
    v16 = [v12 sourceTensors];
    v17 = [v16 count];
    v18 = [v12 sourceTensors];
    v19 = v18;
    if (v17 == 2)
    {
      v20 = 1;
    }

    else
    {
      v20 = 3;
    }

    v21 = [v18 objectAtIndexedSubscript:v20];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v22 = v34;
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
          v28 = [v21 label];
          v29 = [v28 isEqualToString:v27];

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

- (void)allocateDeviceMemoryForTensor:(id)a3 device:(id)a4
{
  v31 = a3;
  v6 = a4;
  v7 = [v6 computeEngine];
  v8 = [v7 needToAllocateDeviceMemoryForTensor:v31];

  if (v8)
  {
    if ([v31 computeFlags])
    {
      goto LABEL_14;
    }

    v9 = [v31 childLayers];
    v10 = [v9 count];

    if (!v10)
    {
      goto LABEL_14;
    }

    v11 = [v6 computeEngine];
    v12 = [v11 deviceMemorySizeForTensor:v31];

    v13 = [(MLCGraph *)self freeResourceList];
    v14 = [v13 count];

    v15 = [(MLCGraph *)self freeResourceList];
    v16 = [v15 count];

    if (v16)
    {
      v17 = 0;
      v18 = -1;
      while (1)
      {
        v19 = [v6 computeEngine];
        v20 = [(MLCGraph *)self freeResourceList];
        v21 = [v20 objectAtIndexedSubscript:v17];
        v22 = [v19 deviceMemorySizeForTensor:v21];

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
        v23 = [(MLCGraph *)self freeResourceList];
        v24 = [v23 count];

        if (v17 >= v24)
        {
          goto LABEL_12;
        }
      }

      v14 = v17;
    }

LABEL_12:
    v25 = [(MLCGraph *)self freeResourceList];
    v26 = [v25 count];

    if (v14 >= v26)
    {
LABEL_14:
      v28 = [v6 computeEngine];
      [v28 allocateDeviceMemoryForTensor:v31];
    }

    else
    {
      v27 = [(MLCGraph *)self freeResourceList];
      v28 = [v27 objectAtIndexedSubscript:v14];

      v29 = [v6 computeEngine];
      [v29 shareDeviceMemoryWithResultTensor:v31 sourceTensor:v28];

      v30 = [(MLCGraph *)self freeResourceList];
      [v30 removeObjectAtIndex:v14];
    }
  }
}

- (void)freeDeviceMemoryForTensorIfSafe:(id)a3 device:(id)a4
{
  v5 = a3;
  v6 = [v5 parentLayers];
  if (![v6 count])
  {

    goto LABEL_8;
  }

  v7 = [v5 computeFlags];

  if (v7)
  {
LABEL_8:
    v9 = v5;
    goto LABEL_9;
  }

  v8 = [v5 sharedMemoryTensor];

  if (!v8)
  {
    v9 = v5;
LABEL_11:
    if ([v9 readCount])
    {
      [v9 setReadCount:{objc_msgSend(v9, "readCount") - 1}];
      if (![v9 readCount])
      {
        v12 = [(MLCGraph *)self freeResourceList];
        [v12 addObject:v9];
      }
    }

    else
    {
      v13 = [(MLCGraph *)self freeResourceList];
      v14 = [v13 count];

      if (v14)
      {
        v15 = 0;
        while (1)
        {
          v16 = [(MLCGraph *)self freeResourceList];
          v17 = [v16 objectAtIndexedSubscript:v15];

          if (v9 == v17)
          {
            break;
          }

          ++v15;
          v18 = [(MLCGraph *)self freeResourceList];
          v19 = [v18 count];

          if (v15 >= v19)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
LABEL_19:
        v20 = [v9 childLayers];
        v21 = [v20 count];

        if (v21)
        {
          v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"tensor=%@ not found in free list", v9];
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

  v9 = [v5 sharedMemoryTensor];

  v10 = [v9 parentLayers];
  if (![v10 count])
  {

    goto LABEL_9;
  }

  v11 = [v9 computeFlags];

  if ((v11 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
}

- (void)updateDeviceMemoryReadCountForTensor:(id)a3
{
  v7 = a3;
  v3 = [v7 sharedMemoryTensor];

  if (v3)
  {
    v4 = [v7 sharedMemoryTensor];
    v5 = [v7 childLayers];
    [v4 setReadCount:{objc_msgSend(v4, "readCount") + objc_msgSend(v5, "count")}];

    [v7 setReadCount:0];
  }

  else
  {
    v6 = [v7 childLayers];
    [v7 setReadCount:{objc_msgSend(v6, "count")}];

    v7 = v6;
  }
}

- (void)updateDeviceMemoryReadCountForGradientWithLayer:(id)a3 tensor:(id)a4 checkIfSourceNeeded:(BOOL)a5 checkIfResultNeeded:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v22 = a3;
  v9 = a4;
  if (v6)
  {
    v10 = [v22 deviceOps];
    v11 = [v10 objectAtIndexedSubscript:0];
    v12 = [v11 resultOfForwardNeededForGradient];

    if (v12)
    {
      v13 = [v9 sharedMemoryTensor];

      if (v13)
      {
        v14 = [v9 sharedMemoryTensor];
        [v14 setReadCount:{objc_msgSend(v14, "readCount") + 1}];

        v15 = 0;
      }

      else
      {
        v15 = [v9 readCount] + 1;
      }

      [v9 setReadCount:v15];
    }
  }

  if (v7)
  {
    v16 = [v22 deviceOps];
    v17 = [v16 objectAtIndexedSubscript:0];
    v18 = [v17 sourceOfForwardNeededForGradient];

    if (v18)
    {
      v19 = [v9 sharedMemoryTensor];

      if (v19)
      {
        v20 = [v9 sharedMemoryTensor];
        [v20 setReadCount:{objc_msgSend(v20, "readCount") + 1}];

        v21 = 0;
      }

      else
      {
        v21 = [v9 readCount] + 1;
      }

      [v9 setReadCount:v21];
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
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end