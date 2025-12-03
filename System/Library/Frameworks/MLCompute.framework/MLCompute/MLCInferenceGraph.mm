@interface MLCInferenceGraph
+ (MLCInferenceGraph)graphWithGraphObjects:(NSArray *)graphObjects;
- (BOOL)addInputs:(NSDictionary *)inputs;
- (BOOL)addInputs:(NSDictionary *)inputs lossLabels:(NSDictionary *)lossLabels lossLabelWeights:(NSDictionary *)lossLabelWeights;
- (BOOL)addInputs:(id)inputs lossLabels:(id)labels;
- (BOOL)addOutputs:(NSDictionary *)outputs;
- (BOOL)compileWithOptions:(MLCGraphCompilationOptions)options device:(MLCDevice *)device inputTensors:(NSDictionary *)inputTensors inputTensorsData:(NSDictionary *)inputTensorsData;
- (BOOL)executeWithInputsData:(NSDictionary *)inputsData lossLabelsData:(NSDictionary *)lossLabelsData lossLabelWeightsData:(NSDictionary *)lossLabelWeightsData outputsData:(NSDictionary *)outputsData batchSize:(NSUInteger)batchSize options:(MLCExecutionOptions)options completionHandler:(MLCGraphCompletionHandler)completionHandler;
- (BOOL)recompileWithOptions:(unint64_t)options;
- (MLCInferenceGraph)initWithGraphObjects:(id)objects;
- (NSUInteger)deviceMemorySize;
- (id)concatenateWithSources:(id)sources dimension:(unint64_t)dimension;
- (id)description;
- (id)nodeWithLayer:(id)layer source:(id)source;
- (id)nodeWithLayer:(id)layer sources:(id)sources;
- (id)reshapeWithShape:(id)shape source:(id)source;
- (id)resultTensorsForLayer:(id)layer;
- (id)sourceTensorsForLayer:(id)layer;
- (id)splitWithSource:(id)source splitCount:(unint64_t)count dimension:(unint64_t)dimension;
- (id)splitWithSource:(id)source splitSectionLengths:(id)lengths dimension:(unint64_t)dimension;
- (id)transposeWithDimensions:(id)dimensions source:(id)source;
@end

@implementation MLCInferenceGraph

+ (MLCInferenceGraph)graphWithGraphObjects:(NSArray *)graphObjects
{
  v4 = graphObjects;
  v5 = [[self alloc] initWithGraphObjects:v4];

  return v5;
}

- (MLCInferenceGraph)initWithGraphObjects:(id)objects
{
  v7.receiver = self;
  v7.super_class = MLCInferenceGraph;
  v3 = [(MLCGraph *)&v7 initWithGraphObjects:objects];
  v4 = v3;
  if (v3)
  {
    v3->_inferenceNodeInit = 0;
    graphLayerList = [(MLCGraph *)v3 graphLayerList];
    v4->_inferenceNodeIndexInGraphLayerList = [graphLayerList count];
  }

  return v4;
}

- (id)splitWithSource:(id)source splitCount:(unint64_t)count dimension:(unint64_t)dimension
{
  sourceCopy = source;
  v9 = [MLCSplitLayer layerWithSplitCount:count dimension:dimension];
  v10 = [(MLCGraph *)self nodeWithMultiOutputLayer:v9 source:sourceCopy forTraining:0];

  return v10;
}

- (id)splitWithSource:(id)source splitSectionLengths:(id)lengths dimension:(unint64_t)dimension
{
  sourceCopy = source;
  v9 = [MLCSplitLayer layerWithSplitSectionLengths:lengths dimension:dimension];
  v10 = [(MLCGraph *)self nodeWithMultiOutputLayer:v9 source:sourceCopy forTraining:0];

  return v10;
}

- (id)concatenateWithSources:(id)sources dimension:(unint64_t)dimension
{
  sourcesCopy = sources;
  if ([sourcesCopy count])
  {
    if (dimension - 4 >= 0xFFFFFFFFFFFFFFFDLL)
    {
      if (![sourcesCopy count])
      {
LABEL_11:
        v11 = [MLCConcatenationLayer layerWithDimension:dimension];
        v12 = [(MLCInferenceGraph *)self nodeWithLayer:v11 sources:sourcesCopy];

        goto LABEL_15;
      }

      v9 = 0;
      while (1)
      {
        v10 = [sourcesCopy objectAtIndexedSubscript:v9];

        if (!v10)
        {
          break;
        }

        if (++v9 >= [sourcesCopy count])
        {
          goto LABEL_11;
        }
      }

      v8 = +[MLCLog framework];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [MLCInferenceGraph concatenateWithSources:a2 dimension:?];
      }
    }

    else
    {
      v8 = +[MLCLog framework];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [MLCInferenceGraph concatenateWithSources:a2 dimension:?];
      }
    }
  }

  else
  {
    v8 = +[MLCLog framework];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MLCInferenceGraph concatenateWithSources:a2 dimension:?];
    }
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (id)reshapeWithShape:(id)shape source:(id)source
{
  v12[1] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v7 = [MLCReshapeLayer layerWithShape:shape];
  v12[0] = sourceCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  v9 = [(MLCInferenceGraph *)self nodeWithLayer:v7 sources:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)transposeWithDimensions:(id)dimensions source:(id)source
{
  v12[1] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v7 = [MLCTransposeLayer layerWithDimensions:dimensions];
  v12[0] = sourceCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  v9 = [(MLCInferenceGraph *)self nodeWithLayer:v7 sources:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)nodeWithLayer:(id)layer source:(id)source
{
  v14 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v6 = MEMORY[0x277CBEA60];
  sourceCopy2 = source;
  layerCopy = layer;
  v9 = [v6 arrayWithObjects:&sourceCopy count:1];

  v10 = [(MLCInferenceGraph *)self nodeWithLayer:layerCopy sources:v9, sourceCopy, v14];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)nodeWithLayer:(id)layer sources:(id)sources
{
  layerCopy = layer;
  v7 = [(MLCGraph *)self nodeWithLayer:layerCopy sources:sources forTraining:0];
  if (v7)
  {
    [layerCopy setCompileForInferenceOnly:1];
    if (![(MLCInferenceGraph *)self inferenceNodeInit])
    {
      [(MLCInferenceGraph *)self setInferenceNodeInit:1];
      graphLayerList = [(MLCGraph *)self graphLayerList];
      -[MLCInferenceGraph setInferenceNodeIndexInGraphLayerList:](self, "setInferenceNodeIndexInGraphLayerList:", [graphLayerList count] - 1);
    }
  }

  return v7;
}

- (BOOL)recompileWithOptions:(unint64_t)options
{
  optionsCopy = options;
  v36 = *MEMORY[0x277D85DE8];
  if (([(MLCGraph *)self compilerOptions]& 1) != 0 || ([(MLCGraph *)self compilerOptions]& 2) != 0)
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
        v10 = +[MLCLog execution];
        v8 = os_signpost_id_generate(v10);
      }

      else
      {
        v8 = 0;
      }

      v11 = +[MLCLog execution];
      v12 = v11;
      v13 = v8 - 1;
      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_238C1D000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v8, "RecompileInferenceGraph", "", buf, 2u);
      }

      spid = v8;

      device = [(MLCGraph *)self device];
      computeEngine = [device computeEngine];
      graphLayerList = [(MLCGraph *)self graphLayerList];
      [computeEngine fuseLayersForInferenceGraph:graphLayerList startAtLayerIndex:{-[MLCInferenceGraph inferenceNodeIndexInGraphLayerList](self, "inferenceNodeIndexInGraphLayerList")}];

      graphLayerList2 = [(MLCGraph *)self graphLayerList];
      v18 = [graphLayerList2 count];

      v19 = 0;
      if (v18)
      {
        v20 = 0;
        while (1)
        {
          graphLayerList3 = [(MLCGraph *)self graphLayerList];
          v22 = [graphLayerList3 objectAtIndexedSubscript:v20];

          if (([v22 skipLayer] & 1) == 0)
          {
            fusedLayers = [v22 fusedLayers];
            if (![fusedLayers count])
            {
              goto LABEL_19;
            }

            compileForInferenceOnly = [v22 compileForInferenceOnly];

            if (compileForInferenceOnly)
            {
              break;
            }
          }

LABEL_20:

          ++v20;
          graphLayerList4 = [(MLCGraph *)self graphLayerList];
          v29 = [graphLayerList4 count];

          if (v20 >= v29)
          {
            goto LABEL_21;
          }
        }

        ++v19;
        fusedLayers = [v22 device];
        sourceTensors = [v22 sourceTensors];
        resultTensors = [v22 resultTensors];
        v27 = [resultTensors objectAtIndexedSubscript:0];
        [v22 compileForDevice:fusedLayers sourceTensors:sourceTensors resultTensor:v27];

LABEL_19:
        goto LABEL_20;
      }

LABEL_21:
      v30 = +[MLCLog execution];
      v9 = v30;
      if (v13 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v30))
      {
        *buf = 134349056;
        v35 = v19;
        _os_signpost_emit_with_name_impl(&dword_238C1D000, v9, OS_SIGNPOST_INTERVAL_END, spid, "RecompileInferenceGraph", "%{public,name=LayersRecompiled}lu", buf, 0xCu);
      }
    }

    else
    {
      v9 = +[MLCLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [MLCTrainingGraph recompileWithOptions:a2];
      }
    }
  }

  v31 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)compileWithOptions:(MLCGraphCompilationOptions)options device:(MLCDevice *)device inputTensors:(NSDictionary *)inputTensors inputTensorsData:(NSDictionary *)inputTensorsData
{
  v189 = *MEMORY[0x277D85DE8];
  v10 = device;
  v11 = inputTensors;
  v12 = inputTensorsData;
  selfCopy = self;
  if ([(MLCGraph *)self readyForExecution])
  {
    v13 = +[MLCLog framework];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph compileWithOptions:a2 device:? inputTensors:? inputTensorsData:?];
    }

    v14 = 1;
    goto LABEL_140;
  }

  if (!v11 || v12)
  {
    v15 = v10;
    v16 = v15;
    if ([(MLCDevice *)v15 type]== MLCDeviceTypeANE)
    {
      v16 = +[MLCDevice cpuDevice];
    }

    v154 = v16;
    [(MLCGraph *)self setCompilerOptions:options];
    v17 = +[MLCLog execution];
    v18 = os_signpost_id_generate(v17);

    v19 = +[MLCLog execution];
    v20 = v19;
    spid = v18;
    v150 = v18 - 1;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138543618;
      v184 = v22;
      v185 = 2050;
      v186 = options;
      _os_signpost_emit_with_name_impl(&dword_238C1D000, v20, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CompileWithOptions", "%{public,name=Device}@ %{public,name=Options}llu", buf, 0x16u);
    }

    aSelector = a2;

    graphLayerList = [(MLCGraph *)self graphLayerList];
    v24 = [graphLayerList objectAtIndexedSubscript:0];
    device = [v24 device];

    if (!device)
    {
      [(MLCInferenceGraph *)selfCopy setInferenceNodeIndexInGraphLayerList:0];
    }

    if (v11 && v12)
    {
      v165 = 0u;
      v166 = 0u;
      v163 = 0u;
      v164 = 0u;
      v26 = v12;
      v27 = [(NSDictionary *)v26 countByEnumeratingWithState:&v163 objects:v180 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v164;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v164 != v29)
            {
              objc_enumerationMutation(v26);
            }

            aSelector = [(NSDictionary *)v11 objectForKeyedSubscript:*(*(&v163 + 1) + 8 * i), aSelector];
            [aSelector setComputeFlags:{objc_msgSend(aSelector, "computeFlags") | 2}];
          }

          v28 = [(NSDictionary *)v26 countByEnumeratingWithState:&v163 objects:v180 count:16];
        }

        while (v28);
      }

      [(MLCGraph *)selfCopy bindAndWriteData:v26 forInputs:v11 toDevice:v15 synchronous:1];
    }

    graphLayerList2 = [(MLCGraph *)selfCopy graphLayerList];
    v33 = [MLCDeviceGraph deviceGraphWithLayers:graphLayerList2 device:v15];
    v179 = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v179 count:1];

    computeEngine = [(MLCDevice *)v15 computeEngine];
    LOBYTE(graphLayerList2) = objc_opt_respondsToSelector();

    if (graphLayerList2)
    {
      computeEngine2 = [(MLCDevice *)v15 computeEngine];
      v37 = [computeEngine2 partitionInferenceGraph:selfCopy startAtLayerIndex:-[MLCInferenceGraph inferenceNodeIndexInGraphLayerList](selfCopy aneDevice:"inferenceNodeIndexInGraphLayerList") secondaryDevice:{v15, v154}];

      v156 = v37;
    }

    else
    {
      v156 = v34;
    }

    inferenceNodeIndexInGraphLayerList = [(MLCInferenceGraph *)selfCopy inferenceNodeIndexInGraphLayerList];
    graphLayerList3 = [(MLCGraph *)selfCopy graphLayerList];
    v40 = [graphLayerList3 count];

    if (inferenceNodeIndexInGraphLayerList < v40)
    {
      do
      {
        graphLayerList4 = [(MLCGraph *)selfCopy graphLayerList];
        v42 = [graphLayerList4 objectAtIndexedSubscript:inferenceNodeIndexInGraphLayerList];

        if (([v42 skipLayer] & 1) == 0)
        {
          [v42 setCompileForInferenceOnly:1];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(MLCGraph *)selfCopy linkRelatedTensorsForConcatLayer:v42 device:v15];
          }
        }

        ++inferenceNodeIndexInGraphLayerList;
        graphLayerList5 = [(MLCGraph *)selfCopy graphLayerList];
        v44 = [graphLayerList5 count];
      }

      while (inferenceNodeIndexInGraphLayerList < v44);
    }

    v155 = v15;
    v151 = v12;
    v152 = v11;
    v153 = v10;
    v148 = (2 * (options & 1)) | options;
    if ((v148 & 6) == 0)
    {
      inferenceNodeIndexInGraphLayerList2 = [(MLCInferenceGraph *)selfCopy inferenceNodeIndexInGraphLayerList];
      v161 = selfCopy;
      v46 = v156;
      if ([v46 count] == 1)
      {
        v47 = inferenceNodeIndexInGraphLayerList2;
      }

      else
      {
        v47 = 0;
      }

      v48 = [MEMORY[0x277CBEBF8] mutableCopy];
      v175 = 0u;
      v176 = 0u;
      v177 = 0u;
      v178 = 0u;
      v49 = v46;
      v50 = [v49 countByEnumeratingWithState:&v175 objects:buf count:16];
      if (v50)
      {
        v51 = v50;
        v52 = *v176;
        v159 = *v176;
        v160 = v47;
        do
        {
          v53 = 0;
          v162 = v51;
          do
          {
            if (*v176 != v52)
            {
              objc_enumerationMutation(v49);
            }

            v54 = *(*(&v175 + 1) + 8 * v53);
            if ([v49 count] >= 2)
            {
              v55 = MEMORY[0x277CBEB98];
              graphLayerList6 = [v54 graphLayerList];
              v57 = [v55 setWithArray:graphLayerList6];

              v173 = 0u;
              v174 = 0u;
              v171 = 0u;
              v172 = 0u;
              graphLayerList7 = [(MLCGraph *)v161 graphLayerList];
              v59 = [graphLayerList7 countByEnumeratingWithState:&v171 objects:v182 count:16];
              if (v59)
              {
                v60 = v59;
                v61 = *v172;
                do
                {
                  for (j = 0; j != v60; ++j)
                  {
                    if (*v172 != v61)
                    {
                      objc_enumerationMutation(graphLayerList7);
                    }

                    v63 = *(*(&v171 + 1) + 8 * j);
                    if (([v63 skipLayer] & 1) == 0 && (objc_msgSend(v57, "containsObject:", v63) & 1) == 0)
                    {
                      [v48 addObject:v63];
                      [v63 setSkipLayer:1];
                    }
                  }

                  v60 = [graphLayerList7 countByEnumeratingWithState:&v171 objects:v182 count:16];
                }

                while (v60);
              }

              v52 = v159;
              v47 = v160;
              v51 = v162;
            }

            device2 = [v54 device];
            computeEngine3 = [device2 computeEngine];
            graphLayerList8 = [v54 graphLayerList];
            [computeEngine3 fuseLayersForInferenceGraph:graphLayerList8 startAtLayerIndex:v47];

            if ([v49 count] >= 2)
            {
              v169 = 0u;
              v170 = 0u;
              v167 = 0u;
              v168 = 0u;
              v67 = v48;
              v68 = [v67 countByEnumeratingWithState:&v167 objects:v181 count:16];
              if (v68)
              {
                v69 = v68;
                v70 = *v168;
                do
                {
                  for (k = 0; k != v69; ++k)
                  {
                    if (*v168 != v70)
                    {
                      objc_enumerationMutation(v67);
                    }

                    [*(*(&v167 + 1) + 8 * k) setSkipLayer:0];
                  }

                  v69 = [v67 countByEnumeratingWithState:&v167 objects:v181 count:16];
                }

                while (v69);
              }

              [v67 removeAllObjects];
            }

            ++v53;
          }

          while (v53 != v51);
          v51 = [v49 countByEnumeratingWithState:&v175 objects:buf count:16];
        }

        while (v51);
      }
    }

    v72 = selfCopy;
    inferenceNodeIndexInGraphLayerList3 = [(MLCInferenceGraph *)selfCopy inferenceNodeIndexInGraphLayerList];
    graphLayerList9 = [(MLCGraph *)selfCopy graphLayerList];
    v75 = [graphLayerList9 count];

    v76 = v156;
    if (inferenceNodeIndexInGraphLayerList3 < v75)
    {
      do
      {
        graphLayerList10 = [(MLCGraph *)v72 graphLayerList];
        v78 = [graphLayerList10 objectAtIndexedSubscript:inferenceNodeIndexInGraphLayerList3];

        if (options)
        {
          [v78 setIsDebuggingEnabled:1];
        }

        if (([v78 skipLayer]& 1) != 0)
        {
          goto LABEL_99;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:inferenceNodeIndexInGraphLayerList3];
          lstmLayerIndexList = [(MLCGraph *)selfCopy lstmLayerIndexList];
          lstmLayerIndexList2 = [(MLCGraph *)selfCopy lstmLayerIndexList];
          [lstmLayerIndexList setObject:v79 atIndexedSubscript:{objc_msgSend(lstmLayerIndexList2, "count")}];
        }

        if ([(MLCDevice *)v155 type])
        {
          deviceOps = [v78 deviceOps];
          v83 = [deviceOps count];

          if (!v83)
          {
            resultTensors = [v78 resultTensors];
            v85 = [resultTensors count];

            if (v85)
            {
              v86 = 0;
              do
              {
                resultTensors2 = [v78 resultTensors];
                v88 = [resultTensors2 objectAtIndexedSubscript:v86];
                deviceMemory = [v88 deviceMemory];
                v90 = [deviceMemory count];

                if (v90)
                {
                  resultTensors3 = [v78 resultTensors];
                  v92 = [resultTensors3 objectAtIndexedSubscript:v86];
                  deviceMemory2 = [v92 deviceMemory];
                  [deviceMemory2 removeAllObjects];
                }

                ++v86;
                resultTensors4 = [v78 resultTensors];
                v95 = [resultTensors4 count];
              }

              while (v86 < v95);
            }
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v133 = +[MLCLog framework];
          v13 = v154;
          v76 = v156;
          if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
          {
            [MLCTrainingGraph compileWithOptions:? device:? inputTensors:? inputTensorsData:?];
          }

          v134 = +[MLCLog execution];
          v135 = v134;
          v11 = v152;
          v10 = v153;
          if (v150 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v134))
          {
            *buf = 0;
            goto LABEL_128;
          }

LABEL_129:

          goto LABEL_130;
        }

        deviceOps2 = [v78 deviceOps];
        v97 = [deviceOps2 count];

        v76 = v156;
        if (v97)
        {
          device3 = [v78 device];
          v99 = [device3 isEqual:v155];

          if ((v99 & 1) == 0)
          {
            v136 = +[MLCLog framework];
            if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
            {
              [MLCInferenceGraph compileWithOptions:device:inputTensors:inputTensorsData:];
            }

            v137 = +[MLCLog execution];
            v135 = v137;
            v11 = v152;
            v10 = v153;
            v13 = v154;
            if (v150 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v137))
            {
              *buf = 0;
LABEL_128:
              _os_signpost_emit_with_name_impl(&dword_238C1D000, v135, OS_SIGNPOST_INTERVAL_END, spid, "CompileWithOptions", "", buf, 2u);
            }

            goto LABEL_129;
          }

          [v78 setDevice:v155];
        }

        v100 = v155;
        if (v155)
        {
          p_super = &v100->super;
          if ([(MLCDevice *)v100 type]== MLCDeviceTypeANE)
          {
            v102 = v154;

            p_super = v102;
          }

          if (!v97)
          {
LABEL_91:
            [v78 setCompileForInferenceOnly:1];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            sourceTensors = [v78 sourceTensors];
            resultTensors5 = [v78 resultTensors];
            v106 = resultTensors5;
            if (isKindOfClass)
            {
              v107 = [v78 compileForDevice:p_super sourceTensors:sourceTensors resultTensors:resultTensors5];

              if (!v107)
              {
                goto LABEL_131;
              }
            }

            else
            {
              v108 = [resultTensors5 objectAtIndexedSubscript:0];
              v109 = [v78 compileForDevice:p_super sourceTensors:sourceTensors resultTensor:v108];

              if ((v109 & 1) == 0)
              {
LABEL_131:
                v138 = +[MLCLog framework];
                if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
                {
                  [MLCTrainingGraph compileWithOptions:device:inputTensors:inputTensorsData:];
                }

                v139 = +[MLCLog execution];
                v140 = v139;
                v11 = v152;
                v10 = v153;
                v76 = v156;
                if (v150 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v139))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_238C1D000, v140, OS_SIGNPOST_INTERVAL_END, spid, "CompileWithOptions", "", buf, 2u);
                }

                goto LABEL_137;
              }
            }

            resultTensors6 = [v78 resultTensors];
            v111 = [resultTensors6 count];

            if (v111)
            {
              v112 = 0;
              do
              {
                resultTensors7 = [v78 resultTensors];
                v114 = [resultTensors7 objectAtIndexedSubscript:v112];
                [v114 setDevice:p_super];

                ++v112;
                resultTensors8 = [v78 resultTensors];
                v116 = [resultTensors8 count];
              }

              while (v112 < v116);
            }
          }
        }

        else
        {
          p_super = 0;
          if (!v97)
          {
            goto LABEL_91;
          }
        }

        v76 = v156;
LABEL_99:

        ++inferenceNodeIndexInGraphLayerList3;
        v72 = selfCopy;
        graphLayerList11 = [(MLCGraph *)selfCopy graphLayerList];
        v118 = [graphLayerList11 count];
      }

      while (inferenceNodeIndexInGraphLayerList3 < v118);
    }

    computeEngine4 = [(MLCDevice *)v155 computeEngine];
    v120 = objc_opt_respondsToSelector();

    if ((v120 & 1) != 0 && (-[MLCDevice computeEngine](v155, "computeEngine"), v121 = objc_claimAutoreleasedReturnValue(), v122 = [v121 postProcessCompiledGraph:v72 compilerOptions:v148], v121, (v122 & 1) == 0))
    {
      v131 = +[MLCLog framework];
      v11 = v152;
      v10 = v153;
      if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
      {
        v143 = NSStringFromSelector(aSelectora);
        computeEngine5 = [(MLCDevice *)v155 computeEngine];
        v145 = [computeEngine5 description];
        *buf = 138412802;
        v184 = v143;
        v185 = 2112;
        v186 = v72;
        v187 = 2112;
        v188 = v145;
        _os_log_error_impl(&dword_238C1D000, v131, OS_LOG_TYPE_ERROR, "%@: failed to post process the compiled graph=%@ on device=%@", buf, 0x20u);

        v76 = v156;
      }

      v132 = +[MLCLog execution];
      v78 = v132;
      if (v150 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v13 = v154;
        if (os_signpost_enabled(v132))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_238C1D000, v78, OS_SIGNPOST_INTERVAL_END, spid, "CompileWithOptions", "", buf, 2u);
        }

LABEL_130:
        v14 = 0;
        goto LABEL_139;
      }

LABEL_137:
      v14 = 0;
    }

    else
    {
      [(MLCGraph *)v72 setReadyForExecution:1];
      [(MLCGraph *)v72 setDevice:v155];
      [(MLCGraph *)v72 setAllocateDeviceMemoryForTensorsInGraph:[(MLCDevice *)v155 type]!= MLCDeviceTypeANE];
      computeEngine6 = [(MLCDevice *)v155 computeEngine];
      v124 = objc_opt_respondsToSelector();

      v11 = v152;
      v10 = v153;
      if (v124)
      {
        computeEngine7 = [(MLCDevice *)v155 computeEngine];
        graphLayerList12 = [(MLCGraph *)v72 graphLayerList];
        [computeEngine7 allocateDeviceHeapForGraph:graphLayerList12 forInference:1];
      }

      if (([(MLCGraph *)v72 compilerOptions]& 4) != 0 || ![(MLCGraph *)v72 staticBatchSizeInGraph])
      {
        computeEngine8 = [(MLCDevice *)v155 computeEngine];
        v128 = objc_opt_respondsToSelector();

        if (v128)
        {
          computeEngine9 = [(MLCDevice *)v155 computeEngine];
          [computeEngine9 selectDevicesWithBatchSize:1];
        }
      }

      v130 = +[MLCLog execution];
      v78 = v130;
      if (v150 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v13 = v154;
        if (os_signpost_enabled(v130))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_238C1D000, v78, OS_SIGNPOST_INTERVAL_END, spid, "CompileWithOptions", "", buf, 2u);
        }

        v14 = 1;
        goto LABEL_139;
      }

      v14 = 1;
    }

    v13 = v154;
LABEL_139:

    v12 = v151;
    goto LABEL_140;
  }

  v13 = +[MLCLog framework];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [MLCTrainingGraph compileWithOptions:a2 device:? inputTensors:? inputTensorsData:?];
  }

  v14 = 0;
LABEL_140:

  v141 = *MEMORY[0x277D85DE8];
  return v14;
}

- (NSUInteger)deviceMemorySize
{
  graphLayerList = [(MLCGraph *)self graphLayerList];
  v4 = [graphLayerList count];

  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    graphLayerList2 = [(MLCGraph *)self graphLayerList];
    v8 = [graphLayerList2 objectAtIndexedSubscript:v5];
    v6 += [v8 deviceMemorySizeForForward];

    ++v5;
    graphLayerList3 = [(MLCGraph *)self graphLayerList];
    v10 = [graphLayerList3 count];
  }

  while (v5 < v10);
  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  graphLayerList = [(MLCGraph *)self graphLayerList];
  v7 = [graphLayerList objectAtIndexedSubscript:0];
  v11.receiver = self;
  v11.super_class = MLCInferenceGraph;
  v8 = [(MLCGraph *)&v11 description];
  v9 = [v3 stringWithFormat:@"%@: { rootLayer=%@ : %@}", v5, v7, v8];

  return v9;
}

- (BOOL)addInputs:(NSDictionary *)inputs
{
  v4.receiver = self;
  v4.super_class = MLCInferenceGraph;
  return [(MLCGraph *)&v4 addInputs:inputs lossLabels:0 lossLabelWeights:0];
}

- (BOOL)addInputs:(id)inputs lossLabels:(id)labels
{
  v5.receiver = self;
  v5.super_class = MLCInferenceGraph;
  return [(MLCGraph *)&v5 addInputs:inputs lossLabels:labels lossLabelWeights:0];
}

- (BOOL)addInputs:(NSDictionary *)inputs lossLabels:(NSDictionary *)lossLabels lossLabelWeights:(NSDictionary *)lossLabelWeights
{
  v6.receiver = self;
  v6.super_class = MLCInferenceGraph;
  return [(MLCGraph *)&v6 addInputs:inputs lossLabels:lossLabels lossLabelWeights:lossLabelWeights];
}

- (BOOL)addOutputs:(NSDictionary *)outputs
{
  v4.receiver = self;
  v4.super_class = MLCInferenceGraph;
  return [(MLCGraph *)&v4 addOutputs:outputs];
}

- (BOOL)executeWithInputsData:(NSDictionary *)inputsData lossLabelsData:(NSDictionary *)lossLabelsData lossLabelWeightsData:(NSDictionary *)lossLabelWeightsData outputsData:(NSDictionary *)outputsData batchSize:(NSUInteger)batchSize options:(MLCExecutionOptions)options completionHandler:(MLCGraphCompletionHandler)completionHandler
{
  v356 = *MEMORY[0x277D85DE8];
  v15 = inputsData;
  v16 = lossLabelsData;
  v17 = options;
  v18 = v16;
  v19 = lossLabelWeightsData;
  v20 = outputsData;
  v21 = completionHandler;
  Current = 0.0;
  if ((v17 & 4) != 0)
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  if (!v21 && (v17 & 2) == 0)
  {
    v23 = +[MLCLog framework];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MLCInferenceGraph executeWithInputsData:a2 lossLabelsData:? lossLabelWeightsData:? outputsData:? batchSize:? options:? completionHandler:?];
    }
  }

  graphLayerList = [(MLCGraph *)self graphLayerList];
  v25 = [graphLayerList count];

  if (v25)
  {
    allInputs = [(MLCGraph *)self allInputs];

    if (!allInputs)
    {
      v33 = +[MLCLog framework];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [MLCTrainingGraph executeWithInputsData:a2 lossLabelsData:? lossLabelWeightsData:? outputsData:? batchSize:? options:? completionHandler:?];
      }

      v31 = NSStringFromSelector(a2);
      v32 = @"No inputs compiled in graph";
      goto LABEL_35;
    }

    allLossLabels = [(MLCGraph *)self allLossLabels];

    if (!allLossLabels && v18 && ![(NSDictionary *)v18 isEqualToDictionary:MEMORY[0x277CBEC10]])
    {
      v35 = +[MLCLog framework];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [MLCTrainingGraph executeWithInputsData:a2 lossLabelsData:? lossLabelWeightsData:? outputsData:? batchSize:? options:? completionHandler:?];
      }

      v31 = NSStringFromSelector(a2);
      v32 = @"No loss labels compiled in graph";
      goto LABEL_35;
    }

    allLossLabelWeights = [(MLCGraph *)self allLossLabelWeights];

    if (!allLossLabelWeights && v19 && ![(NSDictionary *)v19 isEqualToDictionary:MEMORY[0x277CBEC10]])
    {
      v36 = +[MLCLog framework];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [MLCTrainingGraph executeWithInputsData:a2 lossLabelsData:? lossLabelWeightsData:? outputsData:? batchSize:? options:? completionHandler:?];
      }

      v31 = NSStringFromSelector(a2);
      v32 = @"No loss label weights compiled in graph";
      goto LABEL_35;
    }

    if (![(MLCGraph *)self readyForExecution])
    {
      v34 = +[MLCLog framework];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [MLCTrainingGraph executeForwardWithBatchSize:a2 options:? outputsData:? completionHandler:?];
      }

      v31 = NSStringFromSelector(a2);
      v32 = @"graph not ready for execution";
      goto LABEL_35;
    }

    staticBatchSizeInGraph = [(MLCGraph *)self staticBatchSizeInGraph];
    if (batchSize && !staticBatchSizeInGraph)
    {
      v30 = +[MLCLog framework];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [MLCTrainingGraph executeForwardWithBatchSize:a2 options:? outputsData:? completionHandler:?];
      }

      v31 = NSStringFromSelector(a2);
      v32 = @"batchSize provided must be 0 since batch size changes in graph. we will use batch size specified with tensors for layers in graph";
      goto LABEL_35;
    }

    if (v20 && ![(MLCGraph *)self checkPageAlignmentAndSizeForOutputs:v20])
    {
      v74 = +[MLCLog framework];
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        [MLCTrainingGraph executeForwardWithBatchSize:a2 options:? outputsData:? completionHandler:?];
      }

      v31 = NSStringFromSelector(a2);
      v32 = @"Outputs buffers must be page aligned and a multiple of page size";
      goto LABEL_35;
    }

    v324 = v17;
    aSelector = a2;
    v315 = v21;
    v328 = v20;
    v317 = v19;
    [(MLCGraph *)self updateLSTMLayersForVariableSequenceLengthInGraph:self withInputData:v15];
    graphLayerList2 = [(MLCGraph *)self graphLayerList];
    v42 = [graphLayerList2 count];

    graphLayerList3 = [(MLCGraph *)self graphLayerList];
    v44 = [graphLayerList3 count];

    v45 = 0;
    if (v44)
    {
      for (i = 0; i != v44; ++i)
      {
        graphLayerList4 = [(MLCGraph *)self graphLayerList];
        v48 = [graphLayerList4 objectAtIndexedSubscript:i];
        skipLayer = [v48 skipLayer];

        if (v45 <= i)
        {
          v50 = i;
        }

        else
        {
          v50 = v45;
        }

        if (v42 >= i)
        {
          v51 = i;
        }

        else
        {
          v51 = v42;
        }

        if (!skipLayer)
        {
          v42 = v51;
          v45 = v50;
        }
      }
    }

    graphLayerList5 = [(MLCGraph *)self graphLayerList];
    v53 = [graphLayerList5 objectAtIndexedSubscript:v45];

    resultTensors = [v53 resultTensors];
    v333 = [resultTensors objectAtIndexedSubscript:0];

    v325 = v53;
    selfCopy = self;
    v314 = v18;
    if (v328)
    {
      v346 = 0u;
      v347 = 0u;
      v344 = 0u;
      v345 = 0u;
      v55 = v328;
      v56 = [(NSDictionary *)v55 countByEnumeratingWithState:&v344 objects:v355 count:16];
      if (v56)
      {
        v57 = v56;
        v58 = *v345;
        while (2)
        {
          for (j = 0; j != v57; ++j)
          {
            if (*v345 != v58)
            {
              objc_enumerationMutation(v55);
            }

            v60 = *(*(&v344 + 1) + 8 * j);
            allOutputs = [(MLCGraph *)selfCopy allOutputs];
            v62 = [allOutputs objectForKeyedSubscript:v60];

            if (v62 == v333)
            {
              v316 = [(NSDictionary *)v55 objectForKeyedSubscript:v60];

              resultTensors2 = [v325 resultTensors];
              v326 = [resultTensors2 objectAtIndexedSubscript:0];
              v311 = 1;
              v18 = v314;
              self = selfCopy;
              goto LABEL_69;
            }
          }

          v57 = [(NSDictionary *)v55 countByEnumeratingWithState:&v344 objects:v355 count:16];
          self = selfCopy;
          if (v57)
          {
            continue;
          }

          break;
        }
      }

      v18 = v314;
      v53 = v325;
    }

    descriptor = [v333 descriptor];
    v64 = malloc_type_malloc([descriptor tensorAllocationSizeInBytes], 0xC28EC5CEuLL);

    descriptor2 = [v333 descriptor];
    resultTensors2 = +[MLCTensorData dataWithBytesNoCopy:length:freeWhenDone:](MLCTensorData, "dataWithBytesNoCopy:length:freeWhenDone:", v64, [descriptor2 tensorAllocationSizeInBytes], 1);

    descriptor3 = [v333 descriptor];
    v68 = [MLCTensor tensorWithDescriptor:descriptor3 data:resultTensors2];
    [v68 setComputeFlags:1];
    device = [v53 device];
    v326 = v68;
    [v68 setDevice:device];

    device2 = [v53 device];
    LODWORD(v68) = [device2 type];

    if (v68 == 3)
    {
      device3 = [v53 device];
      computeEngine = [device3 computeEngine];
      resultTensors3 = [v53 resultTensors];
      v73 = [resultTensors3 objectAtIndexedSubscript:0];
      [computeEngine shareDeviceMemoryWithResultTensor:v326 sourceTensor:v73];
    }

    v316 = 0;
    v311 = 0;
LABEL_69:

    v75 = v324;
    if ((v324 & 4) != 0)
    {
      *buf = Current;
      *&buf[16] = 0;
      *&buf[8] = 0;
      v319 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:24];
      v76 = +[MLCLog execution];
      spid = os_signpost_id_generate(v76);
    }

    else
    {
      v319 = 0;
      spid = 0;
    }

    if (v324)
    {
      v92 = spid - 1;
LABEL_86:
      v93 = +[MLCLog execution];
      v94 = v93;
      v309 = v92;
      if (v92 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v93))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_238C1D000, v94, OS_SIGNPOST_INTERVAL_BEGIN, spid, "ExecuteForward", "", buf, 2u);
      }

      device4 = [(MLCGraph *)self device];
      v96 = [device4 type] == 0;

      v97 = 0;
      v98 = spid;
      if ((v96 & (v75 >> 4)) == 0)
      {
        v98 = 0;
      }

      v310 = v98;
      v99 = 0x278A68000uLL;
      if (v42 < v45 + 1)
      {
        v100 = 0;
        v101 = v98 - 1;
        v331 = v45;
        v307 = v15;
        v312 = v98 - 1;
        while (1)
        {
          graphLayerList6 = [(MLCGraph *)self graphLayerList];
          v103 = [graphLayerList6 objectAtIndexedSubscript:v42];

          execution = [*(v99 + 3024) execution];
          v105 = execution;
          if (v101 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(execution))
          {
            v106 = objc_opt_class();
            v107 = NSStringFromClass(v106);
            layerID = [v103 layerID];
            *buf = 138543618;
            *&buf[4] = v107;
            *&buf[12] = 2050;
            *&buf[14] = layerID;
            _os_signpost_emit_with_name_impl(&dword_238C1D000, v105, OS_SIGNPOST_INTERVAL_BEGIN, v310, "ExecuteForward -- PerLayer", "%{public,name=MLCLayerType}@ %{public,name=LayerID}lu", buf, 0x16u);
          }

          if ([v103 skipLayer])
          {
            v99 = 0x278A68000uLL;
            v109 = +[MLCLog execution];
            v110 = v109;
            if (v312 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v109))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_238C1D000, v110, OS_SIGNPOST_INTERVAL_END, v310, "ExecuteForward -- PerLayer", "", buf, 2u);
            }

            goto LABEL_193;
          }

          if (v42 == v45)
          {
            v308 = v326;
          }

          else
          {
            resultTensors4 = [v103 resultTensors];
            v308 = [resultTensors4 objectAtIndexedSubscript:0];
          }

          device5 = [v103 device];

          v112 = [MEMORY[0x277CBEBF8] mutableCopy];
          sourceTensors = [v103 sourceTensors];
          v114 = [sourceTensors count];

          if (v114)
          {
            v115 = 0;
            do
            {
              sourceTensors2 = [v103 sourceTensors];
              v117 = [sourceTensors2 objectAtIndexedSubscript:v115];

              [v112 setObject:v117 atIndexedSubscript:v115];
              ++v115;
              sourceTensors3 = [v103 sourceTensors];
              v119 = [sourceTensors3 count];
            }

            while (v115 < v119);
          }

          v342 = 0u;
          v343 = 0u;
          v340 = 0u;
          v341 = 0u;
          obj = v112;
          v120 = [obj countByEnumeratingWithState:&v340 objects:v354 count:16];
          if (v120)
          {
            v121 = v120;
            v122 = *v341;
            while (2)
            {
              for (k = 0; k != v121; ++k)
              {
                if (*v341 != v122)
                {
                  objc_enumerationMutation(obj);
                }

                v124 = *(*(&v340 + 1) + 8 * k);
                device6 = [v124 device];
                device7 = [v103 device];

                if (device6 != device7)
                {
                  device8 = [v103 device];
                  computeEngine2 = [device8 computeEngine];
                  device9 = [v124 device];
                  v130 = [computeEngine2 transferTensor:v124 fromDevice:device9];

                  if ((v130 & 1) == 0)
                  {
                    v335 = v103;
                    v269 = +[MLCLog framework];
                    if (os_log_type_enabled(v269, OS_LOG_TYPE_ERROR))
                    {
                      v297 = NSStringFromSelector(aSelector);
                      device10 = [v124 device];
                      device11 = [v103 device];
                      *buf = 138413058;
                      *&buf[4] = v297;
                      *&buf[12] = 2112;
                      *&buf[14] = v124;
                      *&buf[22] = 2112;
                      v351 = device10;
                      v352 = 2112;
                      v353 = device11;
                      _os_log_error_impl(&dword_238C1D000, v269, OS_LOG_TYPE_ERROR, "%@: Unable to transfer data of a tensor = %@ from device = %@ to device = %@", buf, 0x2Au);
                    }

                    v270 = +[MLCLog execution];
                    v271 = v270;
                    v15 = v307;
                    v18 = v314;
                    v19 = v317;
                    if (v312 > 0xFFFFFFFFFFFFFFFDLL)
                    {
                      v273 = obj;
                      v274 = obj;
                      v21 = v315;
                      v253 = v325;
                      v265 = v326;
                      freeResourceList = v308;
                    }

                    else
                    {
                      v21 = v315;
                      v253 = v325;
                      v265 = v326;
                      freeResourceList = v308;
                      v273 = obj;
                      if (os_signpost_enabled(v270))
                      {
                        *buf = 0;
                        _os_signpost_emit_with_name_impl(&dword_238C1D000, v271, OS_SIGNPOST_INTERVAL_END, v310, "ExecuteForward -- PerLayer", "", buf, 2u);
                      }

                      v274 = obj;
                    }

LABEL_285:

                    v38 = 0;
                    v20 = v328;
                    goto LABEL_286;
                  }

                  device12 = [v103 device];
                  [v124 setDevice:device12];

                  v45 = v331;
                }
              }

              v121 = [obj countByEnumeratingWithState:&v340 objects:v354 count:16];
              if (v121)
              {
                continue;
              }

              break;
            }
          }

          v338 = 0u;
          v339 = 0u;
          v336 = 0u;
          v337 = 0u;
          resultTensors5 = [v103 resultTensors];
          v133 = [resultTensors5 countByEnumeratingWithState:&v336 objects:v349 count:16];
          if (v133)
          {
            v134 = v133;
            v135 = *v337;
            v320 = resultTensors5;
            while (2)
            {
              for (m = 0; m != v134; ++m)
              {
                if (*v337 != v135)
                {
                  objc_enumerationMutation(v320);
                }

                v137 = *(*(&v336 + 1) + 8 * m);
                device13 = [v137 device];
                [v103 device];
                v140 = v139 = v103;

                if (device13 != v140)
                {
                  device14 = [v139 device];
                  computeEngine3 = [device14 computeEngine];
                  v143 = [computeEngine3 updateDeviceMemoryForTensor:v137];

                  if ((v143 & 1) == 0)
                  {
                    v335 = v139;
                    v277 = +[MLCLog execution];
                    v271 = v277;
                    if (v312 > 0xFFFFFFFFFFFFFFFDLL)
                    {
                      v15 = v307;
                      freeResourceList = v308;
                      v18 = v314;
                      v21 = v315;
                      v19 = v317;
                      v253 = v325;
                      v265 = v326;
                      v273 = obj;
                    }

                    else
                    {
                      v15 = v307;
                      freeResourceList = v308;
                      v18 = v314;
                      v21 = v315;
                      v19 = v317;
                      v253 = v325;
                      v265 = v326;
                      v273 = obj;
                      if (os_signpost_enabled(v277))
                      {
                        *buf = 0;
                        _os_signpost_emit_with_name_impl(&dword_238C1D000, v271, OS_SIGNPOST_INTERVAL_END, v310, "ExecuteForward -- PerLayer", "", buf, 2u);
                      }
                    }

                    v274 = v320;
                    goto LABEL_285;
                  }
                }

                device15 = [v139 device];
                [v137 setDevice:device15];

                v103 = v139;
              }

              resultTensors5 = v320;
              v134 = [v320 countByEnumeratingWithState:&v336 objects:v349 count:16];
              if (v134)
              {
                continue;
              }

              break;
            }
          }

          [v103 setBatchSize:batchSize];
          computeEngine4 = [device5 computeEngine];
          v146 = objc_opt_respondsToSelector();

          if (v146)
          {
            computeEngine5 = [device5 computeEngine];
            deviceOps = [v103 deviceOps];
            [computeEngine5 dispatchForwardLayer:deviceOps];

            v149 = +[MLCLog execution];
            v150 = v149;
            v15 = v307;
            v18 = v314;
            self = selfCopy;
            if (v312 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v149))
            {
              v151 = objc_opt_class();
              v152 = NSStringFromClass(v151);
              layerID2 = [v103 layerID];
              [v103 label];
              v155 = v154 = v103;
              *buf = 138543874;
              *&buf[4] = v152;
              *&buf[12] = 2050;
              *&buf[14] = layerID2;
              *&buf[22] = 2114;
              v351 = v155;
              _os_signpost_emit_with_name_impl(&dword_238C1D000, v150, OS_SIGNPOST_INTERVAL_END, v310, "ExecuteForward -- PerLayer", "%{public,name=MLCLayerType}@ (%{public,name=LayerID}lu, %{public,name=MLCLayerName}@)", buf, 0x20u);

              v103 = v154;
              v45 = v331;
            }

            goto LABEL_190;
          }

          objc_opt_class();
          v15 = v307;
          v18 = v314;
          self = selfCopy;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if ([(MLCGraph *)selfCopy allocateDeviceMemoryForTensorsInGraph])
            {
              if ([v103 compileForInferenceOnly])
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  [(MLCGraph *)selfCopy allocateDeviceMemoryForTensor:v308 device:device5];
                  resultTensors6 = [v103 resultTensors];
                  v162 = [resultTensors6 count];

                  if (v162 >= 2)
                  {
                    v163 = 1;
                    do
                    {
                      resultTensors7 = [v103 resultTensors];
                      v165 = [resultTensors7 objectAtIndexedSubscript:v163];
                      [(MLCGraph *)selfCopy allocateDeviceMemoryForTensor:v165 device:device5];

                      ++v163;
                      resultTensors8 = [v103 resultTensors];
                      v167 = [resultTensors8 count];
                    }

                    while (v163 < v167);
                  }
                }
              }

              [(MLCGraph *)selfCopy updateDeviceMemoryReadCountForTensor:v308];
              resultTensors9 = [v103 resultTensors];
              v169 = [resultTensors9 count];

              if (v169 >= 2)
              {
                v170 = 1;
                do
                {
                  resultTensors10 = [v103 resultTensors];
                  v172 = [resultTensors10 objectAtIndexedSubscript:v170];
                  [(MLCGraph *)selfCopy updateDeviceMemoryReadCountForTensor:v172];

                  ++v170;
                  resultTensors11 = [v103 resultTensors];
                  v174 = [resultTensors11 count];
                }

                while (v170 < v174);
              }
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              computeEngine6 = [device5 computeEngine];
              deviceOps2 = [v103 deviceOps];
              v176 = [obj objectAtIndexedSubscript:0];
              v177 = 0;
              binaryOperation = [v103 binaryOperation];
              if (binaryOperation)
              {
                v177 = [obj objectAtIndexedSubscript:1];
                v304 = v177;
              }

              if ([obj count] == 3)
              {
                [obj objectAtIndexedSubscript:2];
                v303 = v176;
                v179 = v178 = deviceOps2;
                LOBYTE(v300) = 0;
                computeEngine7 = computeEngine6;
                [computeEngine6 dispatchForwardLayer:v178 sourceTensor:v303 secondaryTensor:v177 tertiaryTensor:v179 resultTensor:v308 resultStateIsTemporary:0 forTraining:v300];

                deviceOps2 = v178;
                v176 = v303;
              }

              else
              {
                LOBYTE(v300) = 0;
                computeEngine7 = computeEngine6;
                [computeEngine6 dispatchForwardLayer:deviceOps2 sourceTensor:v176 secondaryTensor:v177 tertiaryTensor:0 resultTensor:v308 resultStateIsTemporary:0 forTraining:v300];
              }

              if (binaryOperation)
              {
              }

              goto LABEL_181;
            }

            objc_opt_class();
            v184 = obj;
            if (objc_opt_isKindOfClass())
            {
              v322 = [MEMORY[0x277CBEBF8] mutableCopy];
              [v322 setObject:v308 atIndexedSubscript:0];
              sourceTensors4 = [v103 sourceTensors];
              if ([sourceTensors4 count] == 3)
              {

                goto LABEL_166;
              }

              sourceTensors5 = [v103 sourceTensors];
              v187 = [sourceTensors5 count];

              v188 = v187 == 4;
              v184 = obj;
              if (v188)
              {
LABEL_166:
                sourceTensors6 = [v103 sourceTensors];
                v190 = [sourceTensors6 objectAtIndexedSubscript:1];
                [v184 setObject:v190 atIndexedSubscript:1];

                sourceTensors7 = [v103 sourceTensors];
                v192 = [sourceTensors7 objectAtIndexedSubscript:2];
                [v184 setObject:v192 atIndexedSubscript:2];
              }

              resultTensors12 = [v103 resultTensors];
              v194 = [resultTensors12 count];

              if (v194 == 3)
              {
                resultTensors13 = [v103 resultTensors];
                v196 = [resultTensors13 objectAtIndexedSubscript:1];
                [v322 setObject:v196 atIndexedSubscript:1];

                resultTensors14 = [v103 resultTensors];
                v198 = [resultTensors14 objectAtIndexedSubscript:2];
                [v322 setObject:v198 atIndexedSubscript:2];
              }

              deviceOps2 = [device5 computeEngine];
              deviceOps3 = [v103 deviceOps];
              [deviceOps2 dispatchRNNForwardLayer:deviceOps3 sourceTensors:obj resultTensors:v322];

              computeEngine7 = v322;
LABEL_181:

LABEL_182:
              if (([v103 isDebuggingEnabled] & 1) == 0 && -[MLCGraph allocateDeviceMemoryForTensorsInGraph](self, "allocateDeviceMemoryForTensorsInGraph") && objc_msgSend(obj, "count"))
              {
                v208 = 0;
                do
                {
                  v209 = [obj objectAtIndexedSubscript:v208];
                  [(MLCGraph *)self freeDeviceMemoryForTensorIfSafe:v209 device:device5];

                  ++v208;
                }

                while (v208 < [obj count]);
              }

              v210 = +[MLCLog execution];
              v150 = v210;
              if (v312 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v100 = device5;
                v110 = v308;
                if (os_signpost_enabled(v210))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_238C1D000, v150, OS_SIGNPOST_INTERVAL_END, v310, "ExecuteForward -- PerLayer", "", buf, 2u);
                }

                goto LABEL_191;
              }

LABEL_190:
              v100 = device5;
              v110 = v308;
              goto LABEL_191;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              computeEngine7 = [device5 computeEngine];
              deviceOps2 = [v103 deviceOps];
              [computeEngine7 dispatchForwardMHALayer:deviceOps2 sourceTensors:obj resultTensor:v308 resultStateIsTemporary:0 forTraining:0];
              goto LABEL_181;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              computeEngine7 = [device5 computeEngine];
              deviceOps2 = [v103 deviceOps];
              [computeEngine7 dispatchForwardMatMulLayer:deviceOps2 sourceTensors:obj resultTensor:v308];
LABEL_180:
              v15 = v307;
              v18 = v314;
              v45 = v331;
              self = selfCopy;
              goto LABEL_181;
            }

            objc_opt_class();
            v200 = v103;
            if (objc_opt_isKindOfClass())
            {
              computeEngine8 = [device5 computeEngine];
              deviceOps4 = [v103 deviceOps];
              v203 = [obj objectAtIndexedSubscript:0];
              [computeEngine8 dispatchForwardSliceLayer:deviceOps4 sourceTensor:v203 resultTensor:v308 forTraining:0];
LABEL_174:

              computeEngine7 = computeEngine8;
              deviceOps2 = deviceOps4;
              goto LABEL_180;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              computeEngine9 = [device5 computeEngine];
              deviceOps5 = [v103 deviceOps];
              weights = [obj objectAtIndexedSubscript:0];
              resultTensors15 = [v103 resultTensors];
              [computeEngine9 dispatchForwardSplitLayer:deviceOps5 sourceTensor:weights resultTensors:resultTensors15];
LABEL_179:

              computeEngine7 = computeEngine9;
              deviceOps2 = deviceOps5;
              goto LABEL_180;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              computeEngine9 = [device5 computeEngine];
              deviceOps5 = [v103 deviceOps];
              weights = [v103 weights];
              resultTensors15 = [obj objectAtIndexedSubscript:0];
              [computeEngine9 dispatchForwardEmbeddingLayer:deviceOps5 weight:weights sourceTensor:resultTensors15 resultTensor:v308];
              goto LABEL_179;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              computeEngine10 = [device5 computeEngine];
              deviceOps6 = [v103 deviceOps];
              v213 = [obj objectAtIndexedSubscript:0];
              [computeEngine10 dispatchForwardReshapeLayer:deviceOps6 sourceTensor:v213 resultTensor:v308 resultStateIsTemporary:1 forTraining:0];

              sharedMemoryTensor = [v308 sharedMemoryTensor];

              if (!sharedMemoryTensor)
              {
                v15 = v307;
                v18 = v314;
                v45 = v331;
                self = selfCopy;
                v103 = v200;
                goto LABEL_182;
              }

              sharedMemoryTensor2 = [v308 sharedMemoryTensor];
              childLayers = [v308 childLayers];
              v215 = [childLayers count];
              if (v215)
              {
                childLayers2 = [v308 childLayers];
                v216 = [childLayers2 count];
              }

              else
              {
                v216 = 1;
              }

              [sharedMemoryTensor2 setReadCount:{objc_msgSend(sharedMemoryTensor2, "readCount") + v216}];
              if (v215)
              {
              }

LABEL_215:
              v15 = v307;
              v18 = v314;
              v45 = v331;
              self = selfCopy;
              v103 = v200;
              computeEngine7 = sharedMemoryTensor2;
              deviceOps2 = childLayers;
              goto LABEL_181;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              computeEngine7 = [device5 computeEngine];
              deviceOps2 = [v103 deviceOps];
              [computeEngine7 dispatchForwardConcatLayer:deviceOps2 sourceTensors:obj resultTensor:v308];
              goto LABEL_180;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v217 = v103;
              computeEngine13 = v103;
              computeEngine11 = [device5 computeEngine];
              deviceOps7 = [computeEngine13 deviceOps];
              v221 = [obj objectAtIndexedSubscript:0];
              reductionType = [computeEngine13 reductionType];
              dimensions = [computeEngine13 dimensions];
              v224 = reductionType;
              deviceOps2 = computeEngine11;
              [computeEngine11 dispatchForwardReduceLayer:deviceOps7 sourceTensor:v221 resultTensor:v308 reductionType:v224 reduceDimensions:dimensions forTraining:0];

              v103 = v217;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v225 = v103;
                childLayers = [device5 computeEngine];
                sharedMemoryTensor2 = v225;
                deviceOps8 = [v225 deviceOps];
                v227 = [obj objectAtIndexedSubscript:0];
                v228 = [obj count];
                v229 = 0;
                if (v228 == 2)
                {
                  v229 = [obj objectAtIndexedSubscript:1];
                  v301 = v229;
                }

                [childLayers dispatchForwardCompareLayer:deviceOps8 sourceTensor:v227 secondaryTensor:v229 resultTensor:v308 compareOp:objc_msgSend(sharedMemoryTensor2 forTraining:{"operation"), 0}];
                if (v228 == 2)
                {
                }

                goto LABEL_215;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v230 = v103;
                computeEngine13 = v103;
                lossLabels = [computeEngine13 lossLabels];
                descriptor4 = [lossLabels descriptor];
                stride = [descriptor4 stride];
                v234 = [stride objectAtIndexedSubscript:0];
                v235 = [v234 unsignedIntegerValue] >> 2;

                computeEngine12 = [device5 computeEngine];
                deviceOps7 = [computeEngine13 deviceOps];
                v221 = [obj objectAtIndexedSubscript:0];
                lossLabels2 = [computeEngine13 lossLabels];
                weights2 = [computeEngine13 weights];
                LOWORD(v300) = 0;
                [computeEngine12 dispatchForwardLossLayer:deviceOps7 sourceTensor:v221 labelsTensor:lossLabels2 labelsTensorStride:v235 weightsTensor:weights2 resultTensor:v308 resultStateIsTemporary:v300 forTraining:?];

                v103 = v230;
                deviceOps2 = computeEngine12;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  computeEngine8 = [device5 computeEngine];
                  deviceOps4 = [v103 deviceOps];
                  v203 = [obj objectAtIndexedSubscript:0];
                  [computeEngine8 dispatchForwardFullyConnectedLayer:deviceOps4 sourceTensor:v203 resultTensor:v308 forTraining:0];
                  goto LABEL_174;
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    computeEngine7 = [device5 computeEngine];
                    deviceOps2 = [v103 deviceOps];
                    [computeEngine7 dispatchForwardScatterLayer:deviceOps2 sourceTensors:obj resultTensor:v308 forTraining:0];
                    goto LABEL_180;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    computeEngine7 = [device5 computeEngine];
                    deviceOps2 = [v103 deviceOps];
                    [computeEngine7 dispatchForwardGatherLayer:deviceOps2 sourceTensors:obj resultTensor:v308 forTraining:0];
                    goto LABEL_180;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    fusedLayers = [v103 fusedLayers];
                    if ([fusedLayers count])
                    {
                      fusedLayers2 = [v103 fusedLayers];
                      v245 = [fusedLayers2 objectAtIndexedSubscript:0];
                      objc_opt_class();
                      isKindOfClass = objc_opt_isKindOfClass();

                      if (isKindOfClass)
                      {
                        computeEngine7 = [device5 computeEngine];
                        v103 = v200;
                        deviceOps2 = [v200 deviceOps];
                        [computeEngine7 dispatchForwardFusedArithmeticLayerNormalizationLayer:deviceOps2 sourceTensors:obj resultTensor:v308 forTraining:0];
                        goto LABEL_180;
                      }
                    }

                    else
                    {
                    }
                  }

                  computeEngine8 = [device5 computeEngine];
                  v103 = v200;
                  deviceOps4 = [v200 deviceOps];
                  v203 = [obj objectAtIndexedSubscript:0];
                  [computeEngine8 dispatchForwardLayer:deviceOps4 sourceTensor:v203 resultTensor:v308 resultStateIsTemporary:0 forTraining:0];
                  goto LABEL_174;
                }

                computeEngine13 = [device5 computeEngine];
                v239 = v103;
                deviceOps9 = [v103 deviceOps];
                deviceOps7 = [obj objectAtIndexedSubscript:0];
                v221 = [obj objectAtIndexedSubscript:1];
                v348[0] = v221;
                v241 = [obj objectAtIndexedSubscript:2];
                v348[1] = v241;
                v242 = [MEMORY[0x277CBEA60] arrayWithObjects:v348 count:2];
                [computeEngine13 dispatchForwardSelectLayer:deviceOps9 conditionTensor:deviceOps7 sourceTensors:v242 resultTensor:v308 forTraining:0];

                v103 = v239;
                deviceOps2 = deviceOps9;
              }
            }

            computeEngine7 = computeEngine13;
            goto LABEL_180;
          }

          computeEngine14 = [device5 computeEngine];
          v157 = [computeEngine14 needToAllocateDeviceMemoryForTensor:?];

          if (v157)
          {
            break;
          }

          sharedMemoryTensor3 = [v308 sharedMemoryTensor];

          if (!sharedMemoryTensor3)
          {
            computeEngine15 = [device5 computeEngine];
            deviceOps10 = [v103 deviceOps];
            [computeEngine15 dispatchForwardConcatLayer:deviceOps10 sourceTensors:obj resultTensor:v308];
            goto LABEL_148;
          }

LABEL_149:
          v99 = 0x278A68000uLL;
          v182 = +[MLCLog execution];
          v183 = v182;
          if (v312 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v182))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_238C1D000, v183, OS_SIGNPOST_INTERVAL_END, v310, "ExecuteForward -- PerLayer", "", buf, 2u);
          }

          v100 = device5;
          if ([(MLCGraph *)selfCopy allocateDeviceMemoryForTensorsInGraph])
          {
            v110 = v308;
            [(MLCGraph *)selfCopy updateDeviceMemoryReadCountForTensor:v308];
            v150 = [obj objectAtIndexedSubscript:0];
            [(MLCGraph *)selfCopy freeDeviceMemoryForTensorIfSafe:v150 device:device5];
LABEL_191:

            v99 = 0x278A68000;
            goto LABEL_192;
          }

          v110 = v308;
LABEL_192:

LABEL_193:
          v97 = v100;
          v188 = v42++ == v45;
          v101 = v310 - 1;
          if (v188)
          {
            goto LABEL_232;
          }
        }

        computeEngine15 = [device5 computeEngine];
        deviceOps10 = [v103 sourceTensors];
        v160 = [deviceOps10 objectAtIndexedSubscript:0];
        [computeEngine15 shareDeviceMemoryWithResultTensor:v308 sourceTensor:v160];

LABEL_148:
        goto LABEL_149;
      }

LABEL_232:
      device5 = v97;
      execution2 = [*(v99 + 3024) execution];
      v248 = execution2;
      if (v309 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(execution2))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_238C1D000, v248, OS_SIGNPOST_INTERVAL_END, spid, "ExecuteForward", "", buf, 2u);
      }

      device16 = [v326 device];
      computeEngine16 = [device16 computeEngine];
      [computeEngine16 synchronizeTensor:v326];

      device17 = [v326 device];
      computeEngine17 = [device17 computeEngine];
      v253 = v325;
      resultTensors16 = [v325 resultTensors];
      v255 = [resultTensors16 objectAtIndexedSubscript:0];
      [computeEngine17 shareDeviceMemoryWithResultTensor:v255 sourceTensor:v326];

      v19 = v317;
      v20 = v328;
      if (v311)
      {
        v256 = selfCopy;
        [(MLCGraph *)selfCopy dispatchReadsForMultipleTensorOutputs:v328 finalTensorInGraph:0 finalResultTensor:0 batchSize:batchSize];
        v21 = v315;
        v257 = v324;
        if (v315)
        {
          descriptor5 = [v326 descriptor];
          v335 = [MLCTensor tensorWithDescriptor:descriptor5 data:v316];
        }

        else
        {
          v335 = 0;
        }
      }

      else
      {
        resultTensors17 = [v325 resultTensors];
        v276 = [resultTensors17 objectAtIndexedSubscript:0];
        [(MLCGraph *)selfCopy dispatchReadsForMultipleTensorOutputs:v328 finalTensorInGraph:v276 finalResultTensor:v326 batchSize:batchSize];

        v21 = v315;
        v257 = v324;
        if (v315)
        {
          v335 = v326;
        }

        else
        {
          v335 = 0;
        }

        v256 = selfCopy;
      }

      if ((v257 & 2) != 0)
      {
        if ((executeWithInputsData_lossLabelsData_lossLabelWeightsData_outputsData_batchSize_options_completionHandler__warnedAlready_0 & 1) == 0)
        {
          v285 = +[MLCLog framework];
          if (os_log_type_enabled(v285, OS_LOG_TYPE_INFO))
          {
            v286 = NSStringFromSelector(aSelector);
            *buf = 138412290;
            *&buf[4] = v286;
            _os_log_impl(&dword_238C1D000, v285, OS_LOG_TYPE_INFO, "%@: Synchronous Execution requested", buf, 0xCu);
          }

          executeWithInputsData_lossLabelsData_lossLabelWeightsData_outputsData_batchSize_options_completionHandler__warnedAlready_0 = 1;
          v21 = v315;
        }

        device18 = [(MLCGraph *)v256 device];
        computeEngine18 = [device18 computeEngine];
        [computeEngine18 commitAndWaitForCompletion:v21 enableProfiling:(v324 >> 2) & 1 graphExecutionTime:v319 graphResultTensor:v335];
      }

      else
      {
        v289 = (v257 >> 2) & 1;
        device18 = [(MLCGraph *)v256 device];
        computeEngine18 = [device18 computeEngine];
        [computeEngine18 commitWithCompletionHandler:v21 enableProfiling:v289 graphExecutionTime:v319 graphResultTensor:v335];
      }

      [(MLCGraph *)v256 setAllocateDeviceMemoryForTensorsInGraph:0];
      freeResourceList = [(MLCGraph *)v256 freeResourceList];
      [freeResourceList removeAllObjects];
      v38 = 1;
      v265 = v326;
LABEL_286:

      v37 = device5;
      goto LABEL_38;
    }

    v77 = +[MLCLog execution];
    v78 = v77;
    v79 = spid - 1;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v77))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_238C1D000, v78, OS_SIGNPOST_INTERVAL_BEGIN, spid, "BindData", "", buf, 2u);
    }

    v80 = (v324 >> 1) & 1;

    allInputs2 = [(MLCGraph *)self allInputs];
    device19 = [(MLCGraph *)self device];
    v83 = [(MLCGraph *)self bindAndWriteData:v15 forInputs:allInputs2 toDevice:device19 batchSize:batchSize synchronous:v80 skipWrite:0];

    if (v83)
    {
      if (v18 && ([(MLCGraph *)self allLossLabels], v84 = objc_claimAutoreleasedReturnValue(), [(MLCGraph *)self device], v85 = objc_claimAutoreleasedReturnValue(), v86 = [(MLCGraph *)self bindAndWriteData:v18 forInputs:v84 toDevice:v85 batchSize:batchSize synchronous:v80 skipWrite:0], v85, v84, !v86))
      {
        v278 = MEMORY[0x277CCACA8];
        allLossLabels2 = [(MLCGraph *)self allLossLabels];
        v279 = [v278 stringWithFormat:@"loss label name missing from loss labels specified at compile time allLossLabels=%@", allLossLabels2];

        v281 = +[MLCLog framework];
        if (os_log_type_enabled(v281, OS_LOG_TYPE_ERROR))
        {
          [MLCTrainingGraph executeWithInputsData:lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:completionHandler:];
        }

        v282 = NSStringFromSelector(aSelector);
        v335 = v279;
        v283 = [MLCErrors invalidInputErrorForMethod:v282 description:v279];

        v19 = v317;
        v20 = v328;
        v21 = v315;
        v265 = v326;
        if (v315)
        {
          v315[2](v315, 0, v283, 0.0);
        }

        v266 = v283;
        v284 = +[MLCLog execution];
        v268 = v284;
        if (v79 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v284))
        {
          goto LABEL_282;
        }
      }

      else
      {
        if (!v317 || ([(MLCGraph *)self allLossLabelWeights], v87 = objc_claimAutoreleasedReturnValue(), [(MLCGraph *)self device], v88 = objc_claimAutoreleasedReturnValue(), v89 = [(MLCGraph *)self bindAndWriteData:v317 forInputs:v87 toDevice:v88 batchSize:batchSize synchronous:v80 skipWrite:0], v88, v87, v89))
        {
          v90 = +[MLCLog execution];
          v91 = v90;
          v92 = spid - 1;
          if (v79 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v90))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_238C1D000, v91, OS_SIGNPOST_INTERVAL_END, spid, "BindData", "", buf, 2u);
          }

          v75 = v324;
          goto LABEL_86;
        }

        v290 = MEMORY[0x277CCACA8];
        allLossLabelWeights2 = [(MLCGraph *)self allLossLabelWeights];
        v291 = [v290 stringWithFormat:@"loss label weight name missing from loss label weights specified at compile time allLossLabelWeights=%@", allLossLabelWeights2];

        v293 = +[MLCLog framework];
        if (os_log_type_enabled(v293, OS_LOG_TYPE_ERROR))
        {
          [MLCTrainingGraph executeWithInputsData:lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:completionHandler:];
        }

        v294 = NSStringFromSelector(aSelector);
        v335 = v291;
        v295 = [MLCErrors invalidInputErrorForMethod:v294 description:v291];

        v19 = v317;
        v20 = v328;
        v21 = v315;
        v265 = v326;
        if (v315)
        {
          v315[2](v315, 0, v295, 0.0);
        }

        v266 = v295;
        v296 = +[MLCLog execution];
        v268 = v296;
        if (v79 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v296))
        {
LABEL_282:

          device5 = 0;
          v38 = 0;
          v253 = v325;
          freeResourceList = v266;
          goto LABEL_286;
        }
      }
    }

    else
    {
      v259 = MEMORY[0x277CCACA8];
      allInputs3 = [(MLCGraph *)self allInputs];
      v260 = [v259 stringWithFormat:@"input name missing from inputs specified at compile time allInputs=%@", allInputs3];

      v262 = +[MLCLog framework];
      if (os_log_type_enabled(v262, OS_LOG_TYPE_ERROR))
      {
        [MLCTrainingGraph executeWithInputsData:lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:completionHandler:];
      }

      v263 = NSStringFromSelector(aSelector);
      v335 = v260;
      v264 = [MLCErrors invalidInputErrorForMethod:v263 description:v260];

      v19 = v317;
      v20 = v328;
      v21 = v315;
      v265 = v326;
      if (v315)
      {
        v315[2](v315, 0, v264, 0.0);
      }

      v266 = v264;
      v267 = +[MLCLog execution];
      v268 = v267;
      if (v79 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v267))
      {
        goto LABEL_282;
      }
    }

    *buf = 138543362;
    *&buf[4] = v335;
    _os_signpost_emit_with_name_impl(&dword_238C1D000, v268, OS_SIGNPOST_INTERVAL_END, spid, "BindData", "%{public,name=Error}@", buf, 0xCu);
    goto LABEL_282;
  }

  v31 = NSStringFromSelector(a2);
  v32 = @"Empty graph";
LABEL_35:
  v37 = [MLCErrors invalidStateErrorForMethod:v31 description:v32];

  if (v21)
  {
    v21[2](v21, 0, v37, 0.0);
  }

  v38 = 0;
LABEL_38:

  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

- (id)resultTensorsForLayer:(id)layer
{
  layerCopy = layer;
  graphLayerList = [(MLCGraph *)self graphLayerList];
  v8.receiver = self;
  v8.super_class = MLCInferenceGraph;
  v6 = [(MLCGraph *)&v8 resultTensorsForLayer:layerCopy graphLayerList:graphLayerList];

  return v6;
}

- (id)sourceTensorsForLayer:(id)layer
{
  layerCopy = layer;
  graphLayerList = [(MLCGraph *)self graphLayerList];
  v8.receiver = self;
  v8.super_class = MLCInferenceGraph;
  v6 = [(MLCGraph *)&v8 sourceTensorsForLayer:layerCopy graphLayerList:graphLayerList];

  return v6;
}

- (void)concatenateWithSources:(const char *)a1 dimension:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

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

- (void)compileWithOptions:device:inputTensors:inputTensorsData:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v10 = *MEMORY[0x277D85DE8];
  v2 = NSStringFromSelector(v1);
  v9 = [v0 device];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)executeWithInputsData:(const char *)a1 lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:completionHandler:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end