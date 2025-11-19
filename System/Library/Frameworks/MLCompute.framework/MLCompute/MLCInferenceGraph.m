@interface MLCInferenceGraph
+ (MLCInferenceGraph)graphWithGraphObjects:(NSArray *)graphObjects;
- (BOOL)addInputs:(NSDictionary *)inputs;
- (BOOL)addInputs:(NSDictionary *)inputs lossLabels:(NSDictionary *)lossLabels lossLabelWeights:(NSDictionary *)lossLabelWeights;
- (BOOL)addInputs:(id)a3 lossLabels:(id)a4;
- (BOOL)addOutputs:(NSDictionary *)outputs;
- (BOOL)compileWithOptions:(MLCGraphCompilationOptions)options device:(MLCDevice *)device inputTensors:(NSDictionary *)inputTensors inputTensorsData:(NSDictionary *)inputTensorsData;
- (BOOL)executeWithInputsData:(NSDictionary *)inputsData lossLabelsData:(NSDictionary *)lossLabelsData lossLabelWeightsData:(NSDictionary *)lossLabelWeightsData outputsData:(NSDictionary *)outputsData batchSize:(NSUInteger)batchSize options:(MLCExecutionOptions)options completionHandler:(MLCGraphCompletionHandler)completionHandler;
- (BOOL)recompileWithOptions:(unint64_t)a3;
- (MLCInferenceGraph)initWithGraphObjects:(id)a3;
- (NSUInteger)deviceMemorySize;
- (id)concatenateWithSources:(id)a3 dimension:(unint64_t)a4;
- (id)description;
- (id)nodeWithLayer:(id)a3 source:(id)a4;
- (id)nodeWithLayer:(id)a3 sources:(id)a4;
- (id)reshapeWithShape:(id)a3 source:(id)a4;
- (id)resultTensorsForLayer:(id)a3;
- (id)sourceTensorsForLayer:(id)a3;
- (id)splitWithSource:(id)a3 splitCount:(unint64_t)a4 dimension:(unint64_t)a5;
- (id)splitWithSource:(id)a3 splitSectionLengths:(id)a4 dimension:(unint64_t)a5;
- (id)transposeWithDimensions:(id)a3 source:(id)a4;
@end

@implementation MLCInferenceGraph

+ (MLCInferenceGraph)graphWithGraphObjects:(NSArray *)graphObjects
{
  v4 = graphObjects;
  v5 = [[a1 alloc] initWithGraphObjects:v4];

  return v5;
}

- (MLCInferenceGraph)initWithGraphObjects:(id)a3
{
  v7.receiver = self;
  v7.super_class = MLCInferenceGraph;
  v3 = [(MLCGraph *)&v7 initWithGraphObjects:a3];
  v4 = v3;
  if (v3)
  {
    v3->_inferenceNodeInit = 0;
    v5 = [(MLCGraph *)v3 graphLayerList];
    v4->_inferenceNodeIndexInGraphLayerList = [v5 count];
  }

  return v4;
}

- (id)splitWithSource:(id)a3 splitCount:(unint64_t)a4 dimension:(unint64_t)a5
{
  v8 = a3;
  v9 = [MLCSplitLayer layerWithSplitCount:a4 dimension:a5];
  v10 = [(MLCGraph *)self nodeWithMultiOutputLayer:v9 source:v8 forTraining:0];

  return v10;
}

- (id)splitWithSource:(id)a3 splitSectionLengths:(id)a4 dimension:(unint64_t)a5
{
  v8 = a3;
  v9 = [MLCSplitLayer layerWithSplitSectionLengths:a4 dimension:a5];
  v10 = [(MLCGraph *)self nodeWithMultiOutputLayer:v9 source:v8 forTraining:0];

  return v10;
}

- (id)concatenateWithSources:(id)a3 dimension:(unint64_t)a4
{
  v7 = a3;
  if ([v7 count])
  {
    if (a4 - 4 >= 0xFFFFFFFFFFFFFFFDLL)
    {
      if (![v7 count])
      {
LABEL_11:
        v11 = [MLCConcatenationLayer layerWithDimension:a4];
        v12 = [(MLCInferenceGraph *)self nodeWithLayer:v11 sources:v7];

        goto LABEL_15;
      }

      v9 = 0;
      while (1)
      {
        v10 = [v7 objectAtIndexedSubscript:v9];

        if (!v10)
        {
          break;
        }

        if (++v9 >= [v7 count])
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

- (id)reshapeWithShape:(id)a3 source:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [MLCReshapeLayer layerWithShape:a3];
  v12[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  v9 = [(MLCInferenceGraph *)self nodeWithLayer:v7 sources:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)transposeWithDimensions:(id)a3 source:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [MLCTransposeLayer layerWithDimensions:a3];
  v12[0] = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];

  v9 = [(MLCInferenceGraph *)self nodeWithLayer:v7 sources:v8];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)nodeWithLayer:(id)a3 source:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v13 = a4;
  v6 = MEMORY[0x277CBEA60];
  v7 = a4;
  v8 = a3;
  v9 = [v6 arrayWithObjects:&v13 count:1];

  v10 = [(MLCInferenceGraph *)self nodeWithLayer:v8 sources:v9, v13, v14];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)nodeWithLayer:(id)a3 sources:(id)a4
{
  v6 = a3;
  v7 = [(MLCGraph *)self nodeWithLayer:v6 sources:a4 forTraining:0];
  if (v7)
  {
    [v6 setCompileForInferenceOnly:1];
    if (![(MLCInferenceGraph *)self inferenceNodeInit])
    {
      [(MLCInferenceGraph *)self setInferenceNodeInit:1];
      v8 = [(MLCGraph *)self graphLayerList];
      -[MLCInferenceGraph setInferenceNodeIndexInGraphLayerList:](self, "setInferenceNodeIndexInGraphLayerList:", [v8 count] - 1);
    }
  }

  return v7;
}

- (BOOL)recompileWithOptions:(unint64_t)a3
{
  v3 = a3;
  v36 = *MEMORY[0x277D85DE8];
  if (([(MLCGraph *)self compilerOptions]& 1) != 0 || ([(MLCGraph *)self compilerOptions]& 2) != 0)
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

      v14 = [(MLCGraph *)self device];
      v15 = [v14 computeEngine];
      v16 = [(MLCGraph *)self graphLayerList];
      [v15 fuseLayersForInferenceGraph:v16 startAtLayerIndex:{-[MLCInferenceGraph inferenceNodeIndexInGraphLayerList](self, "inferenceNodeIndexInGraphLayerList")}];

      v17 = [(MLCGraph *)self graphLayerList];
      v18 = [v17 count];

      v19 = 0;
      if (v18)
      {
        v20 = 0;
        while (1)
        {
          v21 = [(MLCGraph *)self graphLayerList];
          v22 = [v21 objectAtIndexedSubscript:v20];

          if (([v22 skipLayer] & 1) == 0)
          {
            v23 = [v22 fusedLayers];
            if (![v23 count])
            {
              goto LABEL_19;
            }

            v24 = [v22 compileForInferenceOnly];

            if (v24)
            {
              break;
            }
          }

LABEL_20:

          ++v20;
          v28 = [(MLCGraph *)self graphLayerList];
          v29 = [v28 count];

          if (v20 >= v29)
          {
            goto LABEL_21;
          }
        }

        ++v19;
        v23 = [v22 device];
        v25 = [v22 sourceTensors];
        v26 = [v22 resultTensors];
        v27 = [v26 objectAtIndexedSubscript:0];
        [v22 compileForDevice:v23 sourceTensors:v25 resultTensor:v27];

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
  v158 = self;
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

    v23 = [(MLCGraph *)self graphLayerList];
    v24 = [v23 objectAtIndexedSubscript:0];
    v25 = [v24 device];

    if (!v25)
    {
      [(MLCInferenceGraph *)v158 setInferenceNodeIndexInGraphLayerList:0];
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

            v31 = [(NSDictionary *)v11 objectForKeyedSubscript:*(*(&v163 + 1) + 8 * i), aSelector];
            [v31 setComputeFlags:{objc_msgSend(v31, "computeFlags") | 2}];
          }

          v28 = [(NSDictionary *)v26 countByEnumeratingWithState:&v163 objects:v180 count:16];
        }

        while (v28);
      }

      [(MLCGraph *)v158 bindAndWriteData:v26 forInputs:v11 toDevice:v15 synchronous:1];
    }

    v32 = [(MLCGraph *)v158 graphLayerList];
    v33 = [MLCDeviceGraph deviceGraphWithLayers:v32 device:v15];
    v179 = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v179 count:1];

    v35 = [(MLCDevice *)v15 computeEngine];
    LOBYTE(v32) = objc_opt_respondsToSelector();

    if (v32)
    {
      v36 = [(MLCDevice *)v15 computeEngine];
      v37 = [v36 partitionInferenceGraph:v158 startAtLayerIndex:-[MLCInferenceGraph inferenceNodeIndexInGraphLayerList](v158 aneDevice:"inferenceNodeIndexInGraphLayerList") secondaryDevice:{v15, v154}];

      v156 = v37;
    }

    else
    {
      v156 = v34;
    }

    v38 = [(MLCInferenceGraph *)v158 inferenceNodeIndexInGraphLayerList];
    v39 = [(MLCGraph *)v158 graphLayerList];
    v40 = [v39 count];

    if (v38 < v40)
    {
      do
      {
        v41 = [(MLCGraph *)v158 graphLayerList];
        v42 = [v41 objectAtIndexedSubscript:v38];

        if (([v42 skipLayer] & 1) == 0)
        {
          [v42 setCompileForInferenceOnly:1];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(MLCGraph *)v158 linkRelatedTensorsForConcatLayer:v42 device:v15];
          }
        }

        ++v38;
        v43 = [(MLCGraph *)v158 graphLayerList];
        v44 = [v43 count];
      }

      while (v38 < v44);
    }

    v155 = v15;
    v151 = v12;
    v152 = v11;
    v153 = v10;
    v148 = (2 * (options & 1)) | options;
    if ((v148 & 6) == 0)
    {
      v45 = [(MLCInferenceGraph *)v158 inferenceNodeIndexInGraphLayerList];
      v161 = v158;
      v46 = v156;
      if ([v46 count] == 1)
      {
        v47 = v45;
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
              v56 = [v54 graphLayerList];
              v57 = [v55 setWithArray:v56];

              v173 = 0u;
              v174 = 0u;
              v171 = 0u;
              v172 = 0u;
              v58 = [(MLCGraph *)v161 graphLayerList];
              v59 = [v58 countByEnumeratingWithState:&v171 objects:v182 count:16];
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
                      objc_enumerationMutation(v58);
                    }

                    v63 = *(*(&v171 + 1) + 8 * j);
                    if (([v63 skipLayer] & 1) == 0 && (objc_msgSend(v57, "containsObject:", v63) & 1) == 0)
                    {
                      [v48 addObject:v63];
                      [v63 setSkipLayer:1];
                    }
                  }

                  v60 = [v58 countByEnumeratingWithState:&v171 objects:v182 count:16];
                }

                while (v60);
              }

              v52 = v159;
              v47 = v160;
              v51 = v162;
            }

            v64 = [v54 device];
            v65 = [v64 computeEngine];
            v66 = [v54 graphLayerList];
            [v65 fuseLayersForInferenceGraph:v66 startAtLayerIndex:v47];

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

    v72 = v158;
    v73 = [(MLCInferenceGraph *)v158 inferenceNodeIndexInGraphLayerList];
    v74 = [(MLCGraph *)v158 graphLayerList];
    v75 = [v74 count];

    v76 = v156;
    if (v73 < v75)
    {
      do
      {
        v77 = [(MLCGraph *)v72 graphLayerList];
        v78 = [v77 objectAtIndexedSubscript:v73];

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
          v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v73];
          v80 = [(MLCGraph *)v158 lstmLayerIndexList];
          v81 = [(MLCGraph *)v158 lstmLayerIndexList];
          [v80 setObject:v79 atIndexedSubscript:{objc_msgSend(v81, "count")}];
        }

        if ([(MLCDevice *)v155 type])
        {
          v82 = [v78 deviceOps];
          v83 = [v82 count];

          if (!v83)
          {
            v84 = [v78 resultTensors];
            v85 = [v84 count];

            if (v85)
            {
              v86 = 0;
              do
              {
                v87 = [v78 resultTensors];
                v88 = [v87 objectAtIndexedSubscript:v86];
                v89 = [v88 deviceMemory];
                v90 = [v89 count];

                if (v90)
                {
                  v91 = [v78 resultTensors];
                  v92 = [v91 objectAtIndexedSubscript:v86];
                  v93 = [v92 deviceMemory];
                  [v93 removeAllObjects];
                }

                ++v86;
                v94 = [v78 resultTensors];
                v95 = [v94 count];
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

        v96 = [v78 deviceOps];
        v97 = [v96 count];

        v76 = v156;
        if (v97)
        {
          v98 = [v78 device];
          v99 = [v98 isEqual:v155];

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
            v104 = [v78 sourceTensors];
            v105 = [v78 resultTensors];
            v106 = v105;
            if (isKindOfClass)
            {
              v107 = [v78 compileForDevice:p_super sourceTensors:v104 resultTensors:v105];

              if (!v107)
              {
                goto LABEL_131;
              }
            }

            else
            {
              v108 = [v105 objectAtIndexedSubscript:0];
              v109 = [v78 compileForDevice:p_super sourceTensors:v104 resultTensor:v108];

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

            v110 = [v78 resultTensors];
            v111 = [v110 count];

            if (v111)
            {
              v112 = 0;
              do
              {
                v113 = [v78 resultTensors];
                v114 = [v113 objectAtIndexedSubscript:v112];
                [v114 setDevice:p_super];

                ++v112;
                v115 = [v78 resultTensors];
                v116 = [v115 count];
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

        ++v73;
        v72 = v158;
        v117 = [(MLCGraph *)v158 graphLayerList];
        v118 = [v117 count];
      }

      while (v73 < v118);
    }

    v119 = [(MLCDevice *)v155 computeEngine];
    v120 = objc_opt_respondsToSelector();

    if ((v120 & 1) != 0 && (-[MLCDevice computeEngine](v155, "computeEngine"), v121 = objc_claimAutoreleasedReturnValue(), v122 = [v121 postProcessCompiledGraph:v72 compilerOptions:v148], v121, (v122 & 1) == 0))
    {
      v131 = +[MLCLog framework];
      v11 = v152;
      v10 = v153;
      if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
      {
        v143 = NSStringFromSelector(aSelectora);
        v144 = [(MLCDevice *)v155 computeEngine];
        v145 = [v144 description];
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
      v123 = [(MLCDevice *)v155 computeEngine];
      v124 = objc_opt_respondsToSelector();

      v11 = v152;
      v10 = v153;
      if (v124)
      {
        v125 = [(MLCDevice *)v155 computeEngine];
        v126 = [(MLCGraph *)v72 graphLayerList];
        [v125 allocateDeviceHeapForGraph:v126 forInference:1];
      }

      if (([(MLCGraph *)v72 compilerOptions]& 4) != 0 || ![(MLCGraph *)v72 staticBatchSizeInGraph])
      {
        v127 = [(MLCDevice *)v155 computeEngine];
        v128 = objc_opt_respondsToSelector();

        if (v128)
        {
          v129 = [(MLCDevice *)v155 computeEngine];
          [v129 selectDevicesWithBatchSize:1];
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
  v3 = [(MLCGraph *)self graphLayerList];
  v4 = [v3 count];

  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    v7 = [(MLCGraph *)self graphLayerList];
    v8 = [v7 objectAtIndexedSubscript:v5];
    v6 += [v8 deviceMemorySizeForForward];

    ++v5;
    v9 = [(MLCGraph *)self graphLayerList];
    v10 = [v9 count];
  }

  while (v5 < v10);
  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCGraph *)self graphLayerList];
  v7 = [v6 objectAtIndexedSubscript:0];
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

- (BOOL)addInputs:(id)a3 lossLabels:(id)a4
{
  v5.receiver = self;
  v5.super_class = MLCInferenceGraph;
  return [(MLCGraph *)&v5 addInputs:a3 lossLabels:a4 lossLabelWeights:0];
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

  v24 = [(MLCGraph *)self graphLayerList];
  v25 = [v24 count];

  if (v25)
  {
    v26 = [(MLCGraph *)self allInputs];

    if (!v26)
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

    v27 = [(MLCGraph *)self allLossLabels];

    if (!v27 && v18 && ![(NSDictionary *)v18 isEqualToDictionary:MEMORY[0x277CBEC10]])
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

    v28 = [(MLCGraph *)self allLossLabelWeights];

    if (!v28 && v19 && ![(NSDictionary *)v19 isEqualToDictionary:MEMORY[0x277CBEC10]])
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

    v29 = [(MLCGraph *)self staticBatchSizeInGraph];
    if (batchSize && !v29)
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
    v41 = [(MLCGraph *)self graphLayerList];
    v42 = [v41 count];

    v43 = [(MLCGraph *)self graphLayerList];
    v44 = [v43 count];

    v45 = 0;
    if (v44)
    {
      for (i = 0; i != v44; ++i)
      {
        v47 = [(MLCGraph *)self graphLayerList];
        v48 = [v47 objectAtIndexedSubscript:i];
        v49 = [v48 skipLayer];

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

        if (!v49)
        {
          v42 = v51;
          v45 = v50;
        }
      }
    }

    v52 = [(MLCGraph *)self graphLayerList];
    v53 = [v52 objectAtIndexedSubscript:v45];

    v54 = [v53 resultTensors];
    v333 = [v54 objectAtIndexedSubscript:0];

    v325 = v53;
    v332 = self;
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
            v61 = [(MLCGraph *)v332 allOutputs];
            v62 = [v61 objectForKeyedSubscript:v60];

            if (v62 == v333)
            {
              v316 = [(NSDictionary *)v55 objectForKeyedSubscript:v60];

              v66 = [v325 resultTensors];
              v326 = [v66 objectAtIndexedSubscript:0];
              v311 = 1;
              v18 = v314;
              self = v332;
              goto LABEL_69;
            }
          }

          v57 = [(NSDictionary *)v55 countByEnumeratingWithState:&v344 objects:v355 count:16];
          self = v332;
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

    v63 = [v333 descriptor];
    v64 = malloc_type_malloc([v63 tensorAllocationSizeInBytes], 0xC28EC5CEuLL);

    v65 = [v333 descriptor];
    v66 = +[MLCTensorData dataWithBytesNoCopy:length:freeWhenDone:](MLCTensorData, "dataWithBytesNoCopy:length:freeWhenDone:", v64, [v65 tensorAllocationSizeInBytes], 1);

    v67 = [v333 descriptor];
    v68 = [MLCTensor tensorWithDescriptor:v67 data:v66];
    [v68 setComputeFlags:1];
    v69 = [v53 device];
    v326 = v68;
    [v68 setDevice:v69];

    v70 = [v53 device];
    LODWORD(v68) = [v70 type];

    if (v68 == 3)
    {
      v330 = [v53 device];
      v71 = [v330 computeEngine];
      v72 = [v53 resultTensors];
      v73 = [v72 objectAtIndexedSubscript:0];
      [v71 shareDeviceMemoryWithResultTensor:v326 sourceTensor:v73];
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

      v95 = [(MLCGraph *)self device];
      v96 = [v95 type] == 0;

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
          v102 = [(MLCGraph *)self graphLayerList];
          v103 = [v102 objectAtIndexedSubscript:v42];

          v104 = [*(v99 + 3024) execution];
          v105 = v104;
          if (v101 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v104))
          {
            v106 = objc_opt_class();
            v107 = NSStringFromClass(v106);
            v108 = [v103 layerID];
            *buf = 138543618;
            *&buf[4] = v107;
            *&buf[12] = 2050;
            *&buf[14] = v108;
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
            v111 = [v103 resultTensors];
            v308 = [v111 objectAtIndexedSubscript:0];
          }

          v318 = [v103 device];

          v112 = [MEMORY[0x277CBEBF8] mutableCopy];
          v113 = [v103 sourceTensors];
          v114 = [v113 count];

          if (v114)
          {
            v115 = 0;
            do
            {
              v116 = [v103 sourceTensors];
              v117 = [v116 objectAtIndexedSubscript:v115];

              [v112 setObject:v117 atIndexedSubscript:v115];
              ++v115;
              v118 = [v103 sourceTensors];
              v119 = [v118 count];
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
                v125 = [v124 device];
                v126 = [v103 device];

                if (v125 != v126)
                {
                  v127 = [v103 device];
                  v128 = [v127 computeEngine];
                  v129 = [v124 device];
                  v130 = [v128 transferTensor:v124 fromDevice:v129];

                  if ((v130 & 1) == 0)
                  {
                    v335 = v103;
                    v269 = +[MLCLog framework];
                    if (os_log_type_enabled(v269, OS_LOG_TYPE_ERROR))
                    {
                      v297 = NSStringFromSelector(aSelector);
                      v298 = [v124 device];
                      v299 = [v103 device];
                      *buf = 138413058;
                      *&buf[4] = v297;
                      *&buf[12] = 2112;
                      *&buf[14] = v124;
                      *&buf[22] = 2112;
                      v351 = v298;
                      v352 = 2112;
                      v353 = v299;
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
                      v272 = v308;
                    }

                    else
                    {
                      v21 = v315;
                      v253 = v325;
                      v265 = v326;
                      v272 = v308;
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

                  v131 = [v103 device];
                  [v124 setDevice:v131];

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
          v132 = [v103 resultTensors];
          v133 = [v132 countByEnumeratingWithState:&v336 objects:v349 count:16];
          if (v133)
          {
            v134 = v133;
            v135 = *v337;
            v320 = v132;
            while (2)
            {
              for (m = 0; m != v134; ++m)
              {
                if (*v337 != v135)
                {
                  objc_enumerationMutation(v320);
                }

                v137 = *(*(&v336 + 1) + 8 * m);
                v138 = [v137 device];
                [v103 device];
                v140 = v139 = v103;

                if (v138 != v140)
                {
                  v141 = [v139 device];
                  v142 = [v141 computeEngine];
                  v143 = [v142 updateDeviceMemoryForTensor:v137];

                  if ((v143 & 1) == 0)
                  {
                    v335 = v139;
                    v277 = +[MLCLog execution];
                    v271 = v277;
                    if (v312 > 0xFFFFFFFFFFFFFFFDLL)
                    {
                      v15 = v307;
                      v272 = v308;
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
                      v272 = v308;
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

                v144 = [v139 device];
                [v137 setDevice:v144];

                v103 = v139;
              }

              v132 = v320;
              v134 = [v320 countByEnumeratingWithState:&v336 objects:v349 count:16];
              if (v134)
              {
                continue;
              }

              break;
            }
          }

          [v103 setBatchSize:batchSize];
          v145 = [v318 computeEngine];
          v146 = objc_opt_respondsToSelector();

          if (v146)
          {
            v147 = [v318 computeEngine];
            v148 = [v103 deviceOps];
            [v147 dispatchForwardLayer:v148];

            v149 = +[MLCLog execution];
            v150 = v149;
            v15 = v307;
            v18 = v314;
            self = v332;
            if (v312 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v149))
            {
              v151 = objc_opt_class();
              v152 = NSStringFromClass(v151);
              v153 = [v103 layerID];
              [v103 label];
              v155 = v154 = v103;
              *buf = 138543874;
              *&buf[4] = v152;
              *&buf[12] = 2050;
              *&buf[14] = v153;
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
          self = v332;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if ([(MLCGraph *)v332 allocateDeviceMemoryForTensorsInGraph])
            {
              if ([v103 compileForInferenceOnly])
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  [(MLCGraph *)v332 allocateDeviceMemoryForTensor:v308 device:v318];
                  v161 = [v103 resultTensors];
                  v162 = [v161 count];

                  if (v162 >= 2)
                  {
                    v163 = 1;
                    do
                    {
                      v164 = [v103 resultTensors];
                      v165 = [v164 objectAtIndexedSubscript:v163];
                      [(MLCGraph *)v332 allocateDeviceMemoryForTensor:v165 device:v318];

                      ++v163;
                      v166 = [v103 resultTensors];
                      v167 = [v166 count];
                    }

                    while (v163 < v167);
                  }
                }
              }

              [(MLCGraph *)v332 updateDeviceMemoryReadCountForTensor:v308];
              v168 = [v103 resultTensors];
              v169 = [v168 count];

              if (v169 >= 2)
              {
                v170 = 1;
                do
                {
                  v171 = [v103 resultTensors];
                  v172 = [v171 objectAtIndexedSubscript:v170];
                  [(MLCGraph *)v332 updateDeviceMemoryReadCountForTensor:v172];

                  ++v170;
                  v173 = [v103 resultTensors];
                  v174 = [v173 count];
                }

                while (v170 < v174);
              }
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v321 = [v318 computeEngine];
              v175 = [v103 deviceOps];
              v176 = [obj objectAtIndexedSubscript:0];
              v177 = 0;
              v305 = [v103 binaryOperation];
              if (v305)
              {
                v177 = [obj objectAtIndexedSubscript:1];
                v304 = v177;
              }

              if ([obj count] == 3)
              {
                [obj objectAtIndexedSubscript:2];
                v303 = v176;
                v179 = v178 = v175;
                LOBYTE(v300) = 0;
                v180 = v321;
                [v321 dispatchForwardLayer:v178 sourceTensor:v303 secondaryTensor:v177 tertiaryTensor:v179 resultTensor:v308 resultStateIsTemporary:0 forTraining:v300];

                v175 = v178;
                v176 = v303;
              }

              else
              {
                LOBYTE(v300) = 0;
                v180 = v321;
                [v321 dispatchForwardLayer:v175 sourceTensor:v176 secondaryTensor:v177 tertiaryTensor:0 resultTensor:v308 resultStateIsTemporary:0 forTraining:v300];
              }

              if (v305)
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
              v185 = [v103 sourceTensors];
              if ([v185 count] == 3)
              {

                goto LABEL_166;
              }

              v186 = [v103 sourceTensors];
              v187 = [v186 count];

              v188 = v187 == 4;
              v184 = obj;
              if (v188)
              {
LABEL_166:
                v189 = [v103 sourceTensors];
                v190 = [v189 objectAtIndexedSubscript:1];
                [v184 setObject:v190 atIndexedSubscript:1];

                v191 = [v103 sourceTensors];
                v192 = [v191 objectAtIndexedSubscript:2];
                [v184 setObject:v192 atIndexedSubscript:2];
              }

              v193 = [v103 resultTensors];
              v194 = [v193 count];

              if (v194 == 3)
              {
                v195 = [v103 resultTensors];
                v196 = [v195 objectAtIndexedSubscript:1];
                [v322 setObject:v196 atIndexedSubscript:1];

                v197 = [v103 resultTensors];
                v198 = [v197 objectAtIndexedSubscript:2];
                [v322 setObject:v198 atIndexedSubscript:2];
              }

              v175 = [v318 computeEngine];
              v199 = [v103 deviceOps];
              [v175 dispatchRNNForwardLayer:v199 sourceTensors:obj resultTensors:v322];

              v180 = v322;
LABEL_181:

LABEL_182:
              if (([v103 isDebuggingEnabled] & 1) == 0 && -[MLCGraph allocateDeviceMemoryForTensorsInGraph](self, "allocateDeviceMemoryForTensorsInGraph") && objc_msgSend(obj, "count"))
              {
                v208 = 0;
                do
                {
                  v209 = [obj objectAtIndexedSubscript:v208];
                  [(MLCGraph *)self freeDeviceMemoryForTensorIfSafe:v209 device:v318];

                  ++v208;
                }

                while (v208 < [obj count]);
              }

              v210 = +[MLCLog execution];
              v150 = v210;
              if (v312 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v100 = v318;
                v110 = v308;
                if (os_signpost_enabled(v210))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_238C1D000, v150, OS_SIGNPOST_INTERVAL_END, v310, "ExecuteForward -- PerLayer", "", buf, 2u);
                }

                goto LABEL_191;
              }

LABEL_190:
              v100 = v318;
              v110 = v308;
              goto LABEL_191;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v180 = [v318 computeEngine];
              v175 = [v103 deviceOps];
              [v180 dispatchForwardMHALayer:v175 sourceTensors:obj resultTensor:v308 resultStateIsTemporary:0 forTraining:0];
              goto LABEL_181;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v180 = [v318 computeEngine];
              v175 = [v103 deviceOps];
              [v180 dispatchForwardMatMulLayer:v175 sourceTensors:obj resultTensor:v308];
LABEL_180:
              v15 = v307;
              v18 = v314;
              v45 = v331;
              self = v332;
              goto LABEL_181;
            }

            objc_opt_class();
            v200 = v103;
            if (objc_opt_isKindOfClass())
            {
              v201 = [v318 computeEngine];
              v202 = [v103 deviceOps];
              v203 = [obj objectAtIndexedSubscript:0];
              [v201 dispatchForwardSliceLayer:v202 sourceTensor:v203 resultTensor:v308 forTraining:0];
LABEL_174:

              v180 = v201;
              v175 = v202;
              goto LABEL_180;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v204 = [v318 computeEngine];
              v205 = [v103 deviceOps];
              v206 = [obj objectAtIndexedSubscript:0];
              v207 = [v103 resultTensors];
              [v204 dispatchForwardSplitLayer:v205 sourceTensor:v206 resultTensors:v207];
LABEL_179:

              v180 = v204;
              v175 = v205;
              goto LABEL_180;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v204 = [v318 computeEngine];
              v205 = [v103 deviceOps];
              v206 = [v103 weights];
              v207 = [obj objectAtIndexedSubscript:0];
              [v204 dispatchForwardEmbeddingLayer:v205 weight:v206 sourceTensor:v207 resultTensor:v308];
              goto LABEL_179;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v211 = [v318 computeEngine];
              v212 = [v103 deviceOps];
              v213 = [obj objectAtIndexedSubscript:0];
              [v211 dispatchForwardReshapeLayer:v212 sourceTensor:v213 resultTensor:v308 resultStateIsTemporary:1 forTraining:0];

              v214 = [v308 sharedMemoryTensor];

              if (!v214)
              {
                v15 = v307;
                v18 = v314;
                v45 = v331;
                self = v332;
                v103 = v200;
                goto LABEL_182;
              }

              v323 = [v308 sharedMemoryTensor];
              v306 = [v308 childLayers];
              v215 = [v306 count];
              if (v215)
              {
                v302 = [v308 childLayers];
                v216 = [v302 count];
              }

              else
              {
                v216 = 1;
              }

              [v323 setReadCount:{objc_msgSend(v323, "readCount") + v216}];
              if (v215)
              {
              }

LABEL_215:
              v15 = v307;
              v18 = v314;
              v45 = v331;
              self = v332;
              v103 = v200;
              v180 = v323;
              v175 = v306;
              goto LABEL_181;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v180 = [v318 computeEngine];
              v175 = [v103 deviceOps];
              [v180 dispatchForwardConcatLayer:v175 sourceTensors:obj resultTensor:v308];
              goto LABEL_180;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v217 = v103;
              v218 = v103;
              v219 = [v318 computeEngine];
              v220 = [v218 deviceOps];
              v221 = [obj objectAtIndexedSubscript:0];
              v222 = [v218 reductionType];
              v223 = [v218 dimensions];
              v224 = v222;
              v175 = v219;
              [v219 dispatchForwardReduceLayer:v220 sourceTensor:v221 resultTensor:v308 reductionType:v224 reduceDimensions:v223 forTraining:0];

              v103 = v217;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v225 = v103;
                v306 = [v318 computeEngine];
                v323 = v225;
                v226 = [v225 deviceOps];
                v227 = [obj objectAtIndexedSubscript:0];
                v228 = [obj count];
                v229 = 0;
                if (v228 == 2)
                {
                  v229 = [obj objectAtIndexedSubscript:1];
                  v301 = v229;
                }

                [v306 dispatchForwardCompareLayer:v226 sourceTensor:v227 secondaryTensor:v229 resultTensor:v308 compareOp:objc_msgSend(v323 forTraining:{"operation"), 0}];
                if (v228 == 2)
                {
                }

                goto LABEL_215;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v230 = v103;
                v218 = v103;
                v231 = [v218 lossLabels];
                v232 = [v231 descriptor];
                v233 = [v232 stride];
                v234 = [v233 objectAtIndexedSubscript:0];
                v235 = [v234 unsignedIntegerValue] >> 2;

                v236 = [v318 computeEngine];
                v220 = [v218 deviceOps];
                v221 = [obj objectAtIndexedSubscript:0];
                v237 = [v218 lossLabels];
                v238 = [v218 weights];
                LOWORD(v300) = 0;
                [v236 dispatchForwardLossLayer:v220 sourceTensor:v221 labelsTensor:v237 labelsTensorStride:v235 weightsTensor:v238 resultTensor:v308 resultStateIsTemporary:v300 forTraining:?];

                v103 = v230;
                v175 = v236;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v201 = [v318 computeEngine];
                  v202 = [v103 deviceOps];
                  v203 = [obj objectAtIndexedSubscript:0];
                  [v201 dispatchForwardFullyConnectedLayer:v202 sourceTensor:v203 resultTensor:v308 forTraining:0];
                  goto LABEL_174;
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v180 = [v318 computeEngine];
                    v175 = [v103 deviceOps];
                    [v180 dispatchForwardScatterLayer:v175 sourceTensors:obj resultTensor:v308 forTraining:0];
                    goto LABEL_180;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v180 = [v318 computeEngine];
                    v175 = [v103 deviceOps];
                    [v180 dispatchForwardGatherLayer:v175 sourceTensors:obj resultTensor:v308 forTraining:0];
                    goto LABEL_180;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v243 = [v103 fusedLayers];
                    if ([v243 count])
                    {
                      v244 = [v103 fusedLayers];
                      v245 = [v244 objectAtIndexedSubscript:0];
                      objc_opt_class();
                      isKindOfClass = objc_opt_isKindOfClass();

                      if (isKindOfClass)
                      {
                        v180 = [v318 computeEngine];
                        v103 = v200;
                        v175 = [v200 deviceOps];
                        [v180 dispatchForwardFusedArithmeticLayerNormalizationLayer:v175 sourceTensors:obj resultTensor:v308 forTraining:0];
                        goto LABEL_180;
                      }
                    }

                    else
                    {
                    }
                  }

                  v201 = [v318 computeEngine];
                  v103 = v200;
                  v202 = [v200 deviceOps];
                  v203 = [obj objectAtIndexedSubscript:0];
                  [v201 dispatchForwardLayer:v202 sourceTensor:v203 resultTensor:v308 resultStateIsTemporary:0 forTraining:0];
                  goto LABEL_174;
                }

                v218 = [v318 computeEngine];
                v239 = v103;
                v240 = [v103 deviceOps];
                v220 = [obj objectAtIndexedSubscript:0];
                v221 = [obj objectAtIndexedSubscript:1];
                v348[0] = v221;
                v241 = [obj objectAtIndexedSubscript:2];
                v348[1] = v241;
                v242 = [MEMORY[0x277CBEA60] arrayWithObjects:v348 count:2];
                [v218 dispatchForwardSelectLayer:v240 conditionTensor:v220 sourceTensors:v242 resultTensor:v308 forTraining:0];

                v103 = v239;
                v175 = v240;
              }
            }

            v180 = v218;
            goto LABEL_180;
          }

          v156 = [v318 computeEngine];
          v157 = [v156 needToAllocateDeviceMemoryForTensor:?];

          if (v157)
          {
            break;
          }

          v181 = [v308 sharedMemoryTensor];

          if (!v181)
          {
            v158 = [v318 computeEngine];
            v159 = [v103 deviceOps];
            [v158 dispatchForwardConcatLayer:v159 sourceTensors:obj resultTensor:v308];
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

          v100 = v318;
          if ([(MLCGraph *)v332 allocateDeviceMemoryForTensorsInGraph])
          {
            v110 = v308;
            [(MLCGraph *)v332 updateDeviceMemoryReadCountForTensor:v308];
            v150 = [obj objectAtIndexedSubscript:0];
            [(MLCGraph *)v332 freeDeviceMemoryForTensorIfSafe:v150 device:v318];
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

        v158 = [v318 computeEngine];
        v159 = [v103 sourceTensors];
        v160 = [v159 objectAtIndexedSubscript:0];
        [v158 shareDeviceMemoryWithResultTensor:v308 sourceTensor:v160];

LABEL_148:
        goto LABEL_149;
      }

LABEL_232:
      v318 = v97;
      v247 = [*(v99 + 3024) execution];
      v248 = v247;
      if (v309 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v247))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_238C1D000, v248, OS_SIGNPOST_INTERVAL_END, spid, "ExecuteForward", "", buf, 2u);
      }

      v249 = [v326 device];
      v250 = [v249 computeEngine];
      [v250 synchronizeTensor:v326];

      v251 = [v326 device];
      v252 = [v251 computeEngine];
      v253 = v325;
      v254 = [v325 resultTensors];
      v255 = [v254 objectAtIndexedSubscript:0];
      [v252 shareDeviceMemoryWithResultTensor:v255 sourceTensor:v326];

      v19 = v317;
      v20 = v328;
      if (v311)
      {
        v256 = v332;
        [(MLCGraph *)v332 dispatchReadsForMultipleTensorOutputs:v328 finalTensorInGraph:0 finalResultTensor:0 batchSize:batchSize];
        v21 = v315;
        v257 = v324;
        if (v315)
        {
          v258 = [v326 descriptor];
          v335 = [MLCTensor tensorWithDescriptor:v258 data:v316];
        }

        else
        {
          v335 = 0;
        }
      }

      else
      {
        v275 = [v325 resultTensors];
        v276 = [v275 objectAtIndexedSubscript:0];
        [(MLCGraph *)v332 dispatchReadsForMultipleTensorOutputs:v328 finalTensorInGraph:v276 finalResultTensor:v326 batchSize:batchSize];

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

        v256 = v332;
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

        v287 = [(MLCGraph *)v256 device];
        v288 = [v287 computeEngine];
        [v288 commitAndWaitForCompletion:v21 enableProfiling:(v324 >> 2) & 1 graphExecutionTime:v319 graphResultTensor:v335];
      }

      else
      {
        v289 = (v257 >> 2) & 1;
        v287 = [(MLCGraph *)v256 device];
        v288 = [v287 computeEngine];
        [v288 commitWithCompletionHandler:v21 enableProfiling:v289 graphExecutionTime:v319 graphResultTensor:v335];
      }

      [(MLCGraph *)v256 setAllocateDeviceMemoryForTensorsInGraph:0];
      v272 = [(MLCGraph *)v256 freeResourceList];
      [v272 removeAllObjects];
      v38 = 1;
      v265 = v326;
LABEL_286:

      v37 = v318;
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

    v81 = [(MLCGraph *)self allInputs];
    v82 = [(MLCGraph *)self device];
    v83 = [(MLCGraph *)self bindAndWriteData:v15 forInputs:v81 toDevice:v82 batchSize:batchSize synchronous:v80 skipWrite:0];

    if (v83)
    {
      if (v18 && ([(MLCGraph *)self allLossLabels], v84 = objc_claimAutoreleasedReturnValue(), [(MLCGraph *)self device], v85 = objc_claimAutoreleasedReturnValue(), v86 = [(MLCGraph *)self bindAndWriteData:v18 forInputs:v84 toDevice:v85 batchSize:batchSize synchronous:v80 skipWrite:0], v85, v84, !v86))
      {
        v278 = MEMORY[0x277CCACA8];
        v279 = [(MLCGraph *)self allLossLabels];
        v280 = [v278 stringWithFormat:@"loss label name missing from loss labels specified at compile time allLossLabels=%@", v279];

        v281 = +[MLCLog framework];
        if (os_log_type_enabled(v281, OS_LOG_TYPE_ERROR))
        {
          [MLCTrainingGraph executeWithInputsData:lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:completionHandler:];
        }

        v282 = NSStringFromSelector(aSelector);
        v335 = v280;
        v283 = [MLCErrors invalidInputErrorForMethod:v282 description:v280];

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
        v291 = [(MLCGraph *)self allLossLabelWeights];
        v292 = [v290 stringWithFormat:@"loss label weight name missing from loss label weights specified at compile time allLossLabelWeights=%@", v291];

        v293 = +[MLCLog framework];
        if (os_log_type_enabled(v293, OS_LOG_TYPE_ERROR))
        {
          [MLCTrainingGraph executeWithInputsData:lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:completionHandler:];
        }

        v294 = NSStringFromSelector(aSelector);
        v335 = v292;
        v295 = [MLCErrors invalidInputErrorForMethod:v294 description:v292];

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

          v318 = 0;
          v38 = 0;
          v253 = v325;
          v272 = v266;
          goto LABEL_286;
        }
      }
    }

    else
    {
      v259 = MEMORY[0x277CCACA8];
      v260 = [(MLCGraph *)self allInputs];
      v261 = [v259 stringWithFormat:@"input name missing from inputs specified at compile time allInputs=%@", v260];

      v262 = +[MLCLog framework];
      if (os_log_type_enabled(v262, OS_LOG_TYPE_ERROR))
      {
        [MLCTrainingGraph executeWithInputsData:lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:completionHandler:];
      }

      v263 = NSStringFromSelector(aSelector);
      v335 = v261;
      v264 = [MLCErrors invalidInputErrorForMethod:v263 description:v261];

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

- (id)resultTensorsForLayer:(id)a3
{
  v4 = a3;
  v5 = [(MLCGraph *)self graphLayerList];
  v8.receiver = self;
  v8.super_class = MLCInferenceGraph;
  v6 = [(MLCGraph *)&v8 resultTensorsForLayer:v4 graphLayerList:v5];

  return v6;
}

- (id)sourceTensorsForLayer:(id)a3
{
  v4 = a3;
  v5 = [(MLCGraph *)self graphLayerList];
  v8.receiver = self;
  v8.super_class = MLCInferenceGraph;
  v6 = [(MLCGraph *)&v8 sourceTensorsForLayer:v4 graphLayerList:v5];

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