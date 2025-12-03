@interface MLCComputeEngineCommon
+ (BOOL)doesActivationRequireInput:(id)input forInference:(BOOL)inference;
+ (BOOL)forwardSourceTensorToChildLayersFrom:(id)from stopGradientTensorList:(id)list;
+ (BOOL)isResultTensorInStopGradientTensorList:(id)list resultTensor:(id)tensor forInference:(BOOL)inference;
+ (void)applyPatternMatcherForGraph:(id)graph stopGradientTensorList:(id)list startAtLayerIndex:(unint64_t)index forInference:(BOOL)inference;
+ (void)updateLayersAndTensorsForComplexActivationFunction:(id)function inputTensor:(id)tensor;
+ (void)updateTensorsForFusedPaddingAndConvolutionLayer:(id)layer layerNext:(id)next;
+ (void)updateTensorsForThreeFusedLayers:(id)layers layerNext:(id)next layerNext2:(id)next2;
+ (void)updateTensorsForTwoFusedLayers:(id)layers layerNext:(id)next;
@end

@implementation MLCComputeEngineCommon

+ (BOOL)doesActivationRequireInput:(id)input forInference:(BOOL)inference
{
  inputCopy = input;
  objc_opt_class();
  v6 = 0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && !inference)
  {
    descriptor = [inputCopy descriptor];
    activationType = [descriptor activationType];
    if (activationType <= 0x14)
    {
      if (((1 << activationType) & 0x10FBBD) != 0)
      {
        v6 = 0;
LABEL_6:

        goto LABEL_7;
      }

      if (((1 << activationType) & 0x402) != 0)
      {
        [descriptor a];
        v11 = v10 < 0.0;
        goto LABEL_12;
      }

      if (activationType == 17)
      {
        [descriptor a];
        v13 = v12;
        [descriptor b];
        v11 = v13 < v14;
LABEL_12:
        v6 = v11;
        goto LABEL_6;
      }
    }

    v6 = 1;
    goto LABEL_6;
  }

LABEL_7:

  return v6;
}

+ (BOOL)isResultTensorInStopGradientTensorList:(id)list resultTensor:(id)tensor forInference:(BOOL)inference
{
  if (!list || inference)
  {
    return 0;
  }

  else
  {
    return [list containsObject:tensor];
  }
}

+ (void)updateTensorsForFusedPaddingAndConvolutionLayer:(id)layer layerNext:(id)next
{
  layerCopy = layer;
  nextCopy = next;
  sourceTensors = [layerCopy sourceTensors];
  v8 = [sourceTensors objectAtIndexedSubscript:0];

  sourceTensors2 = [nextCopy sourceTensors];
  [sourceTensors2 setObject:v8 atIndexedSubscript:0];

  childLayers = [v8 childLayers];
  [childLayers setObject:nextCopy atIndexedSubscript:0];

  sourceGradientTensors = [layerCopy sourceGradientTensors];
  v12 = [sourceGradientTensors count];

  if (v12)
  {
    sourceGradientTensors2 = [layerCopy sourceGradientTensors];
    v14 = [sourceGradientTensors2 objectAtIndexedSubscript:0];
    resultGradientTensors = [layerCopy resultGradientTensors];
    [resultGradientTensors setObject:v14 atIndexedSubscript:0];
  }

  [layerCopy setSkipLayer:1];
  deviceOps = [nextCopy deviceOps];
  v17 = [deviceOps count];

  if (v17)
  {
    v18 = [MEMORY[0x277CBEBF8] mutableCopy];
    [nextCopy setDeviceOps:v18];
  }

  v20 = layerCopy;
  [nextCopy setPaddingPolicy:2];
  [nextCopy setPaddingSizeInX:{objc_msgSend(v20, "paddingLeft")}];
  paddingTop = [v20 paddingTop];

  [nextCopy setPaddingSizeInY:paddingTop];
}

+ (void)updateLayersAndTensorsForComplexActivationFunction:(id)function inputTensor:(id)tensor
{
  functionCopy = function;
  tensorCopy = tensor;
  v6 = [functionCopy count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = MEMORY[0x277CBEBF8];
    do
    {
      v11 = [functionCopy objectAtIndexedSubscript:v9];
      if (v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        deviceOps = [v11 deviceOps];
        v13 = [deviceOps count];

        if (v13)
        {
          v14 = [v10 mutableCopy];
          [v11 setDeviceOps:v14];
        }

        [v11 setSkipLayer:1];
        [v11 setIsLastFusedLayer:0];
      }

      else
      {
        v8 = v11;
      }

      ++v9;
    }

    while (v7 != v9);
    if (v8)
    {
      sourceTensors = [v8 sourceTensors];
      [sourceTensors setObject:tensorCopy atIndexedSubscript:0];

      lastObject = [functionCopy lastObject];
      resultTensors = [lastObject resultTensors];
      v18 = [resultTensors objectAtIndexedSubscript:0];
      resultTensors2 = [v8 resultTensors];
      [resultTensors2 setObject:v18 atIndexedSubscript:0];

      lastObject2 = [functionCopy lastObject];
      [lastObject2 setIsLastFusedLayer:1];

      lastObject3 = [functionCopy lastObject];
      resultTensors3 = [lastObject3 resultTensors];
      v23 = [resultTensors3 objectAtIndexedSubscript:0];
      parentLayers = [v23 parentLayers];
      [parentLayers setObject:v8 atIndexedSubscript:0];

      lastObject4 = [functionCopy lastObject];
      sourceGradientTensors = [lastObject4 sourceGradientTensors];
      v27 = [sourceGradientTensors count];

      if (v27)
      {
        lastObject5 = [functionCopy lastObject];
        sourceGradientTensors2 = [lastObject5 sourceGradientTensors];
        v30 = [sourceGradientTensors2 objectAtIndexedSubscript:0];
        sourceGradientTensors3 = [v8 sourceGradientTensors];
        [sourceGradientTensors3 setObject:v30 atIndexedSubscript:0];
      }

      fusedLayers = [v8 fusedLayers];
      [fusedLayers addObjectsFromArray:functionCopy];
    }
  }
}

+ (void)updateTensorsForTwoFusedLayers:(id)layers layerNext:(id)next
{
  layersCopy = layers;
  nextCopy = next;
  resultTensors = [nextCopy resultTensors];
  v7 = [resultTensors objectAtIndexedSubscript:0];

  resultTensors2 = [layersCopy resultTensors];
  [resultTensors2 setObject:v7 atIndexedSubscript:0];

  parentLayers = [v7 parentLayers];
  [parentLayers setObject:layersCopy atIndexedSubscript:0];

  sourceGradientTensors = [layersCopy sourceGradientTensors];
  v11 = [sourceGradientTensors count];

  if (v11)
  {
    sourceGradientTensors2 = [nextCopy sourceGradientTensors];
    v13 = [sourceGradientTensors2 objectAtIndexedSubscript:0];
    sourceGradientTensors3 = [layersCopy sourceGradientTensors];
    [sourceGradientTensors3 setObject:v13 atIndexedSubscript:0];
  }

  fusedLayers = [layersCopy fusedLayers];
  [fusedLayers addObject:nextCopy];

  [nextCopy setSkipLayer:1];
  [nextCopy setIsLastFusedLayer:1];
  deviceOps = [layersCopy deviceOps];
  v17 = [deviceOps count];

  if (v17)
  {
    v18 = [MEMORY[0x277CBEBF8] mutableCopy];
    [layersCopy setDeviceOps:v18];
  }
}

+ (void)updateTensorsForThreeFusedLayers:(id)layers layerNext:(id)next layerNext2:(id)next2
{
  layersCopy = layers;
  next2Copy = next2;
  nextCopy = next;
  resultTensors = [next2Copy resultTensors];
  v10 = [resultTensors objectAtIndexedSubscript:0];

  resultTensors2 = [layersCopy resultTensors];
  [resultTensors2 setObject:v10 atIndexedSubscript:0];

  parentLayers = [v10 parentLayers];
  [parentLayers setObject:layersCopy atIndexedSubscript:0];

  sourceGradientTensors = [layersCopy sourceGradientTensors];
  v14 = [sourceGradientTensors count];

  if (v14)
  {
    sourceGradientTensors2 = [next2Copy sourceGradientTensors];
    v16 = [sourceGradientTensors2 objectAtIndexedSubscript:0];
    sourceGradientTensors3 = [layersCopy sourceGradientTensors];
    [sourceGradientTensors3 setObject:v16 atIndexedSubscript:0];
  }

  fusedLayers = [layersCopy fusedLayers];
  [fusedLayers addObject:nextCopy];

  fusedLayers2 = [layersCopy fusedLayers];
  [fusedLayers2 addObject:next2Copy];

  [nextCopy setSkipLayer:1];
  [next2Copy setSkipLayer:1];
  [next2Copy setIsLastFusedLayer:1];
  deviceOps = [layersCopy deviceOps];
  v21 = [deviceOps count];

  if (v21)
  {
    v22 = [MEMORY[0x277CBEBF8] mutableCopy];
    [layersCopy setDeviceOps:v22];
  }
}

+ (BOOL)forwardSourceTensorToChildLayersFrom:(id)from stopGradientTensorList:(id)list
{
  v65 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  listCopy = list;
  sourceTensors = [fromCopy sourceTensors];
  v9 = [sourceTensors count];

  if (v9 == 1)
  {
    resultTensors = [fromCopy resultTensors];
    v11 = [resultTensors count];

    if (v11 == 1)
    {
      resultTensors2 = [fromCopy resultTensors];
      lastObject = [resultTensors2 lastObject];

      if (([lastObject computeFlags]& 1) != 0)
      {
        v15 = +[MLCLog framework];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [MLCComputeEngineCommon forwardSourceTensorToChildLayersFrom:a2 stopGradientTensorList:?];
        }

        v14 = 0;
        goto LABEL_51;
      }

      if (listCopy)
      {
        [MEMORY[0x277CBEB98] setWithArray:listCopy];
      }

      else
      {
        [MEMORY[0x277CBEB98] set];
      }
      v15 = ;
      if ([v15 containsObject:lastObject])
      {
        lastObject2 = +[MLCLog framework];
        if (os_log_type_enabled(lastObject2, OS_LOG_TYPE_ERROR))
        {
          [MLCComputeEngineCommon forwardSourceTensorToChildLayersFrom:a2 stopGradientTensorList:?];
        }

        v14 = 0;
        goto LABEL_50;
      }

      v58 = v15;
      sourceTensors2 = [fromCopy sourceTensors];
      lastObject2 = [sourceTensors2 lastObject];

      parentLayers = [lastObject2 parentLayers];
      if ([parentLayers count])
      {
        parentLayers2 = [lastObject2 parentLayers];
        lastObject3 = [parentLayers2 lastObject];
        [lastObject3 sourceGradientTensors];
        v22 = v21 = fromCopy;
        v23 = [v22 count];

        fromCopy = v21;
        if (v23 >= 2)
        {
          obj = +[MLCLog framework];
          if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
          {
            [MLCComputeEngineCommon forwardSourceTensorToChildLayersFrom:a2 stopGradientTensorList:?];
          }

          v14 = 0;
          v15 = v58;
          goto LABEL_49;
        }
      }

      else
      {
      }

      childLayers = [lastObject childLayers];
      childLayers2 = [lastObject2 childLayers];
      v26 = [childLayers2 count];

      if (v26 >= 1)
      {
        v27 = v26 + 1;
        do
        {
          childLayers3 = [lastObject2 childLayers];
          v29 = [childLayers3 count];

          if (!v29)
          {
            break;
          }

          childLayers4 = [lastObject2 childLayers];
          v31 = [childLayers4 objectAtIndexedSubscript:v27 - 2];

          if (v31 == fromCopy)
          {
            childLayers5 = [lastObject2 childLayers];
            [childLayers5 removeObjectAtIndex:v27 - 2];
          }

          --v27;
        }

        while (v27 > 1);
      }

      v56 = listCopy;
      v57 = fromCopy;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      obj = childLayers;
      v33 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v61;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v61 != v35)
            {
              objc_enumerationMutation(obj);
            }

            v37 = *(*(&v60 + 1) + 8 * i);
            sourceTensors3 = [v37 sourceTensors];
            v39 = [sourceTensors3 count];

            if (v39)
            {
              for (j = 0; j != v39; ++j)
              {
                sourceTensors4 = [v37 sourceTensors];
                v42 = [sourceTensors4 objectAtIndexedSubscript:j];

                if (v42 == lastObject)
                {
                  sourceTensors5 = [v37 sourceTensors];
                  [sourceTensors5 setObject:lastObject2 atIndexedSubscript:j];

                  childLayers6 = [lastObject2 childLayers];
                  [childLayers6 addObject:v37];
                }
              }
            }
          }

          v34 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
        }

        while (v34);
      }

      parentLayers3 = [lastObject2 parentLayers];
      if ([parentLayers3 count])
      {
        fromCopy = v57;
        sourceGradientTensors = [v57 sourceGradientTensors];
        v47 = [sourceGradientTensors count];

        v15 = v58;
        if (!v47)
        {
LABEL_48:
          v14 = 1;
          listCopy = v56;
LABEL_49:

LABEL_50:
LABEL_51:

          goto LABEL_52;
        }

        parentLayers4 = [lastObject2 parentLayers];
        lastObject4 = [parentLayers4 lastObject];
        sourceGradientTensors2 = [lastObject4 sourceGradientTensors];
        [sourceGradientTensors2 removeAllObjects];

        parentLayers3 = [lastObject2 parentLayers];
        lastObject5 = [parentLayers3 lastObject];
        sourceGradientTensors3 = [lastObject5 sourceGradientTensors];
        sourceGradientTensors4 = [v57 sourceGradientTensors];
        [sourceGradientTensors3 addObjectsFromArray:sourceGradientTensors4];
      }

      else
      {
        fromCopy = v57;
        v15 = v58;
      }

      goto LABEL_48;
    }

    lastObject = +[MLCLog framework];
    if (os_log_type_enabled(lastObject, OS_LOG_TYPE_ERROR))
    {
      [MLCComputeEngineCommon forwardSourceTensorToChildLayersFrom:a2 stopGradientTensorList:?];
    }
  }

  else
  {
    lastObject = +[MLCLog framework];
    if (os_log_type_enabled(lastObject, OS_LOG_TYPE_ERROR))
    {
      [MLCComputeEngineCommon forwardSourceTensorToChildLayersFrom:a2 stopGradientTensorList:?];
    }
  }

  v14 = 0;
LABEL_52:

  v54 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (void)applyPatternMatcherForGraph:(id)graph stopGradientTensorList:(id)list startAtLayerIndex:(unint64_t)index forInference:(BOOL)inference
{
  v37 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  listCopy = list;
  if ([graphCopy count] > index)
  {
    *&v9 = 138412546;
    v27 = v9;
    do
    {
      v10 = [graphCopy objectAtIndexedSubscript:{index, v27}];
      if (([v10 skipLayer] & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          resultTensors = v10;
          if (![resultTensors paddingLeft] && !objc_msgSend(resultTensors, "paddingRight") && !objc_msgSend(resultTensors, "paddingTop") && !objc_msgSend(resultTensors, "paddingBottom") && +[MLCComputeEngineCommon forwardSourceTensorToChildLayersFrom:stopGradientTensorList:](MLCComputeEngineCommon, "forwardSourceTensorToChildLayersFrom:stopGradientTensorList:", resultTensors, listCopy))
          {
            [resultTensors setSkipLayer:1];
            goto LABEL_27;
          }
        }

        resultTensors = [v10 resultTensors];
        if ([resultTensors count] > 1)
        {
          goto LABEL_27;
        }

        resultTensors2 = [v10 resultTensors];
        v13 = [resultTensors2 objectAtIndexedSubscript:0];
        childLayers = [v13 childLayers];
        v15 = [childLayers count];

        if (v15 <= 1)
        {
          resultTensors = [MEMORY[0x277CBEBF8] mutableCopy];
          v32 = 0;
          v16 = listCopy;
          if ([MLCPatternMatcher canTransformToReLUNFromLayer:v10 stopGradientTensorList:listCopy fusedLayers:resultTensors alpha:&v32 + 4 beta:&v32])
          {
            if ([resultTensors count] == 2 || objc_msgSend(resultTensors, "count") == 3)
            {
              [resultTensors insertObject:v10 atIndex:0];
              sourceTensors = [v10 sourceTensors];
              v18 = [sourceTensors objectAtIndexedSubscript:0];
              [MLCComputeEngineCommon updateLayersAndTensorsForComplexActivationFunction:resultTensors inputTensor:v18];

              v19 = 0;
              goto LABEL_26;
            }

            v20 = +[MLCLog framework];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v21 = NSStringFromSelector(a2);
              *buf = v27;
              v34 = v21;
              v35 = 2112;
              v36 = resultTensors;
              _os_log_impl(&dword_238C1D000, v20, OS_LOG_TYPE_INFO, "%@: cannot fuse layers = %@ to ReLUN", buf, 0x16u);
            }

            v16 = listCopy;
          }

          v22 = [MEMORY[0x277CBEBF8] mutableCopy];

          v31 = 0;
          v23 = [MLCPatternMatcher canTransformToHardSwishFromLayer:v10 stopGradientTensorList:v16 fusedLayers:v22 inputTensor:&v31];
          v19 = v31;
          if (v23)
          {
            [MLCComputeEngineCommon updateLayersAndTensorsForComplexActivationFunction:v22 inputTensor:v19];
            resultTensors = v22;
          }

          else
          {
            resultTensors = [MEMORY[0x277CBEBF8] mutableCopy];

            v30 = v19;
            v24 = [MLCPatternMatcher canTransformToGELUFromLayer:v10 stopGradientTensorList:v16 fusedLayers:resultTensors inputTensor:&v30];
            v25 = v30;

            if (v24)
            {
              [MLCComputeEngineCommon updateLayersAndTensorsForComplexActivationFunction:resultTensors inputTensor:v25];
            }

            v19 = v25;
          }

LABEL_26:

LABEL_27:
        }
      }

      ++index;
    }

    while (index < [graphCopy count]);
  }

  v26 = *MEMORY[0x277D85DE8];
}

+ (void)forwardSourceTensorToChildLayersFrom:(const char *)a1 stopGradientTensorList:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)forwardSourceTensorToChildLayersFrom:(const char *)a1 stopGradientTensorList:.cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)forwardSourceTensorToChildLayersFrom:(const char *)a1 stopGradientTensorList:.cold.3(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)forwardSourceTensorToChildLayersFrom:(const char *)a1 stopGradientTensorList:.cold.4(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

+ (void)forwardSourceTensorToChildLayersFrom:(const char *)a1 stopGradientTensorList:.cold.5(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end