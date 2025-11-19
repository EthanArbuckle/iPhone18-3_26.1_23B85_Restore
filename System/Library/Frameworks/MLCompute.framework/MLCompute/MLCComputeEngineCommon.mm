@interface MLCComputeEngineCommon
+ (BOOL)doesActivationRequireInput:(id)a3 forInference:(BOOL)a4;
+ (BOOL)forwardSourceTensorToChildLayersFrom:(id)a3 stopGradientTensorList:(id)a4;
+ (BOOL)isResultTensorInStopGradientTensorList:(id)a3 resultTensor:(id)a4 forInference:(BOOL)a5;
+ (void)applyPatternMatcherForGraph:(id)a3 stopGradientTensorList:(id)a4 startAtLayerIndex:(unint64_t)a5 forInference:(BOOL)a6;
+ (void)updateLayersAndTensorsForComplexActivationFunction:(id)a3 inputTensor:(id)a4;
+ (void)updateTensorsForFusedPaddingAndConvolutionLayer:(id)a3 layerNext:(id)a4;
+ (void)updateTensorsForThreeFusedLayers:(id)a3 layerNext:(id)a4 layerNext2:(id)a5;
+ (void)updateTensorsForTwoFusedLayers:(id)a3 layerNext:(id)a4;
@end

@implementation MLCComputeEngineCommon

+ (BOOL)doesActivationRequireInput:(id)a3 forInference:(BOOL)a4
{
  v5 = a3;
  objc_opt_class();
  v6 = 0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && !a4)
  {
    v7 = [v5 descriptor];
    v8 = [v7 activationType];
    if (v8 <= 0x14)
    {
      if (((1 << v8) & 0x10FBBD) != 0)
      {
        v6 = 0;
LABEL_6:

        goto LABEL_7;
      }

      if (((1 << v8) & 0x402) != 0)
      {
        [v7 a];
        v11 = v10 < 0.0;
        goto LABEL_12;
      }

      if (v8 == 17)
      {
        [v7 a];
        v13 = v12;
        [v7 b];
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

+ (BOOL)isResultTensorInStopGradientTensorList:(id)a3 resultTensor:(id)a4 forInference:(BOOL)a5
{
  if (!a3 || a5)
  {
    return 0;
  }

  else
  {
    return [a3 containsObject:a4];
  }
}

+ (void)updateTensorsForFusedPaddingAndConvolutionLayer:(id)a3 layerNext:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 sourceTensors];
  v8 = [v7 objectAtIndexedSubscript:0];

  v9 = [v6 sourceTensors];
  [v9 setObject:v8 atIndexedSubscript:0];

  v10 = [v8 childLayers];
  [v10 setObject:v6 atIndexedSubscript:0];

  v11 = [v5 sourceGradientTensors];
  v12 = [v11 count];

  if (v12)
  {
    v13 = [v5 sourceGradientTensors];
    v14 = [v13 objectAtIndexedSubscript:0];
    v15 = [v5 resultGradientTensors];
    [v15 setObject:v14 atIndexedSubscript:0];
  }

  [v5 setSkipLayer:1];
  v16 = [v6 deviceOps];
  v17 = [v16 count];

  if (v17)
  {
    v18 = [MEMORY[0x277CBEBF8] mutableCopy];
    [v6 setDeviceOps:v18];
  }

  v20 = v5;
  [v6 setPaddingPolicy:2];
  [v6 setPaddingSizeInX:{objc_msgSend(v20, "paddingLeft")}];
  v19 = [v20 paddingTop];

  [v6 setPaddingSizeInY:v19];
}

+ (void)updateLayersAndTensorsForComplexActivationFunction:(id)a3 inputTensor:(id)a4
{
  v33 = a3;
  v5 = a4;
  v6 = [v33 count];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = MEMORY[0x277CBEBF8];
    do
    {
      v11 = [v33 objectAtIndexedSubscript:v9];
      if (v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v12 = [v11 deviceOps];
        v13 = [v12 count];

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
      v15 = [v8 sourceTensors];
      [v15 setObject:v5 atIndexedSubscript:0];

      v16 = [v33 lastObject];
      v17 = [v16 resultTensors];
      v18 = [v17 objectAtIndexedSubscript:0];
      v19 = [v8 resultTensors];
      [v19 setObject:v18 atIndexedSubscript:0];

      v20 = [v33 lastObject];
      [v20 setIsLastFusedLayer:1];

      v21 = [v33 lastObject];
      v22 = [v21 resultTensors];
      v23 = [v22 objectAtIndexedSubscript:0];
      v24 = [v23 parentLayers];
      [v24 setObject:v8 atIndexedSubscript:0];

      v25 = [v33 lastObject];
      v26 = [v25 sourceGradientTensors];
      v27 = [v26 count];

      if (v27)
      {
        v28 = [v33 lastObject];
        v29 = [v28 sourceGradientTensors];
        v30 = [v29 objectAtIndexedSubscript:0];
        v31 = [v8 sourceGradientTensors];
        [v31 setObject:v30 atIndexedSubscript:0];
      }

      v32 = [v8 fusedLayers];
      [v32 addObjectsFromArray:v33];
    }
  }
}

+ (void)updateTensorsForTwoFusedLayers:(id)a3 layerNext:(id)a4
{
  v19 = a3;
  v5 = a4;
  v6 = [v5 resultTensors];
  v7 = [v6 objectAtIndexedSubscript:0];

  v8 = [v19 resultTensors];
  [v8 setObject:v7 atIndexedSubscript:0];

  v9 = [v7 parentLayers];
  [v9 setObject:v19 atIndexedSubscript:0];

  v10 = [v19 sourceGradientTensors];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [v5 sourceGradientTensors];
    v13 = [v12 objectAtIndexedSubscript:0];
    v14 = [v19 sourceGradientTensors];
    [v14 setObject:v13 atIndexedSubscript:0];
  }

  v15 = [v19 fusedLayers];
  [v15 addObject:v5];

  [v5 setSkipLayer:1];
  [v5 setIsLastFusedLayer:1];
  v16 = [v19 deviceOps];
  v17 = [v16 count];

  if (v17)
  {
    v18 = [MEMORY[0x277CBEBF8] mutableCopy];
    [v19 setDeviceOps:v18];
  }
}

+ (void)updateTensorsForThreeFusedLayers:(id)a3 layerNext:(id)a4 layerNext2:(id)a5
{
  v23 = a3;
  v7 = a5;
  v8 = a4;
  v9 = [v7 resultTensors];
  v10 = [v9 objectAtIndexedSubscript:0];

  v11 = [v23 resultTensors];
  [v11 setObject:v10 atIndexedSubscript:0];

  v12 = [v10 parentLayers];
  [v12 setObject:v23 atIndexedSubscript:0];

  v13 = [v23 sourceGradientTensors];
  v14 = [v13 count];

  if (v14)
  {
    v15 = [v7 sourceGradientTensors];
    v16 = [v15 objectAtIndexedSubscript:0];
    v17 = [v23 sourceGradientTensors];
    [v17 setObject:v16 atIndexedSubscript:0];
  }

  v18 = [v23 fusedLayers];
  [v18 addObject:v8];

  v19 = [v23 fusedLayers];
  [v19 addObject:v7];

  [v8 setSkipLayer:1];
  [v7 setSkipLayer:1];
  [v7 setIsLastFusedLayer:1];
  v20 = [v23 deviceOps];
  v21 = [v20 count];

  if (v21)
  {
    v22 = [MEMORY[0x277CBEBF8] mutableCopy];
    [v23 setDeviceOps:v22];
  }
}

+ (BOOL)forwardSourceTensorToChildLayersFrom:(id)a3 stopGradientTensorList:(id)a4
{
  v65 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 sourceTensors];
  v9 = [v8 count];

  if (v9 == 1)
  {
    v10 = [v6 resultTensors];
    v11 = [v10 count];

    if (v11 == 1)
    {
      v12 = [v6 resultTensors];
      v13 = [v12 lastObject];

      if (([v13 computeFlags]& 1) != 0)
      {
        v15 = +[MLCLog framework];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [MLCComputeEngineCommon forwardSourceTensorToChildLayersFrom:a2 stopGradientTensorList:?];
        }

        v14 = 0;
        goto LABEL_51;
      }

      if (v7)
      {
        [MEMORY[0x277CBEB98] setWithArray:v7];
      }

      else
      {
        [MEMORY[0x277CBEB98] set];
      }
      v15 = ;
      if ([v15 containsObject:v13])
      {
        v16 = +[MLCLog framework];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [MLCComputeEngineCommon forwardSourceTensorToChildLayersFrom:a2 stopGradientTensorList:?];
        }

        v14 = 0;
        goto LABEL_50;
      }

      v58 = v15;
      v17 = [v6 sourceTensors];
      v16 = [v17 lastObject];

      v18 = [v16 parentLayers];
      if ([v18 count])
      {
        v19 = [v16 parentLayers];
        v20 = [v19 lastObject];
        [v20 sourceGradientTensors];
        v22 = v21 = v6;
        v23 = [v22 count];

        v6 = v21;
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

      v24 = [v13 childLayers];
      v25 = [v16 childLayers];
      v26 = [v25 count];

      if (v26 >= 1)
      {
        v27 = v26 + 1;
        do
        {
          v28 = [v16 childLayers];
          v29 = [v28 count];

          if (!v29)
          {
            break;
          }

          v30 = [v16 childLayers];
          v31 = [v30 objectAtIndexedSubscript:v27 - 2];

          if (v31 == v6)
          {
            v32 = [v16 childLayers];
            [v32 removeObjectAtIndex:v27 - 2];
          }

          --v27;
        }

        while (v27 > 1);
      }

      v56 = v7;
      v57 = v6;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      obj = v24;
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
            v38 = [v37 sourceTensors];
            v39 = [v38 count];

            if (v39)
            {
              for (j = 0; j != v39; ++j)
              {
                v41 = [v37 sourceTensors];
                v42 = [v41 objectAtIndexedSubscript:j];

                if (v42 == v13)
                {
                  v43 = [v37 sourceTensors];
                  [v43 setObject:v16 atIndexedSubscript:j];

                  v44 = [v16 childLayers];
                  [v44 addObject:v37];
                }
              }
            }
          }

          v34 = [obj countByEnumeratingWithState:&v60 objects:v64 count:16];
        }

        while (v34);
      }

      v45 = [v16 parentLayers];
      if ([v45 count])
      {
        v6 = v57;
        v46 = [v57 sourceGradientTensors];
        v47 = [v46 count];

        v15 = v58;
        if (!v47)
        {
LABEL_48:
          v14 = 1;
          v7 = v56;
LABEL_49:

LABEL_50:
LABEL_51:

          goto LABEL_52;
        }

        v48 = [v16 parentLayers];
        v49 = [v48 lastObject];
        v50 = [v49 sourceGradientTensors];
        [v50 removeAllObjects];

        v45 = [v16 parentLayers];
        v51 = [v45 lastObject];
        v52 = [v51 sourceGradientTensors];
        v53 = [v57 sourceGradientTensors];
        [v52 addObjectsFromArray:v53];
      }

      else
      {
        v6 = v57;
        v15 = v58;
      }

      goto LABEL_48;
    }

    v13 = +[MLCLog framework];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MLCComputeEngineCommon forwardSourceTensorToChildLayersFrom:a2 stopGradientTensorList:?];
    }
  }

  else
  {
    v13 = +[MLCLog framework];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MLCComputeEngineCommon forwardSourceTensorToChildLayersFrom:a2 stopGradientTensorList:?];
    }
  }

  v14 = 0;
LABEL_52:

  v54 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (void)applyPatternMatcherForGraph:(id)a3 stopGradientTensorList:(id)a4 startAtLayerIndex:(unint64_t)a5 forInference:(BOOL)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v29 = a4;
  if ([v8 count] > a5)
  {
    *&v9 = 138412546;
    v27 = v9;
    do
    {
      v10 = [v8 objectAtIndexedSubscript:{a5, v27}];
      if (([v10 skipLayer] & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          if (![v11 paddingLeft] && !objc_msgSend(v11, "paddingRight") && !objc_msgSend(v11, "paddingTop") && !objc_msgSend(v11, "paddingBottom") && +[MLCComputeEngineCommon forwardSourceTensorToChildLayersFrom:stopGradientTensorList:](MLCComputeEngineCommon, "forwardSourceTensorToChildLayersFrom:stopGradientTensorList:", v11, v29))
          {
            [v11 setSkipLayer:1];
            goto LABEL_27;
          }
        }

        v11 = [v10 resultTensors];
        if ([v11 count] > 1)
        {
          goto LABEL_27;
        }

        v12 = [v10 resultTensors];
        v13 = [v12 objectAtIndexedSubscript:0];
        v14 = [v13 childLayers];
        v15 = [v14 count];

        if (v15 <= 1)
        {
          v11 = [MEMORY[0x277CBEBF8] mutableCopy];
          v32 = 0;
          v16 = v29;
          if ([MLCPatternMatcher canTransformToReLUNFromLayer:v10 stopGradientTensorList:v29 fusedLayers:v11 alpha:&v32 + 4 beta:&v32])
          {
            if ([v11 count] == 2 || objc_msgSend(v11, "count") == 3)
            {
              [v11 insertObject:v10 atIndex:0];
              v17 = [v10 sourceTensors];
              v18 = [v17 objectAtIndexedSubscript:0];
              [MLCComputeEngineCommon updateLayersAndTensorsForComplexActivationFunction:v11 inputTensor:v18];

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
              v36 = v11;
              _os_log_impl(&dword_238C1D000, v20, OS_LOG_TYPE_INFO, "%@: cannot fuse layers = %@ to ReLUN", buf, 0x16u);
            }

            v16 = v29;
          }

          v22 = [MEMORY[0x277CBEBF8] mutableCopy];

          v31 = 0;
          v23 = [MLCPatternMatcher canTransformToHardSwishFromLayer:v10 stopGradientTensorList:v16 fusedLayers:v22 inputTensor:&v31];
          v19 = v31;
          if (v23)
          {
            [MLCComputeEngineCommon updateLayersAndTensorsForComplexActivationFunction:v22 inputTensor:v19];
            v11 = v22;
          }

          else
          {
            v11 = [MEMORY[0x277CBEBF8] mutableCopy];

            v30 = v19;
            v24 = [MLCPatternMatcher canTransformToGELUFromLayer:v10 stopGradientTensorList:v16 fusedLayers:v11 inputTensor:&v30];
            v25 = v30;

            if (v24)
            {
              [MLCComputeEngineCommon updateLayersAndTensorsForComplexActivationFunction:v11 inputTensor:v25];
            }

            v19 = v25;
          }

LABEL_26:

LABEL_27:
        }
      }

      ++a5;
    }

    while (a5 < [v8 count]);
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