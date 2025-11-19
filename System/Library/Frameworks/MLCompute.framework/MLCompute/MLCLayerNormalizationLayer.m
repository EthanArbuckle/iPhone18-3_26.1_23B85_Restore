@interface MLCLayerNormalizationLayer
+ (MLCLayerNormalizationLayer)layerWithNormalizedShape:(NSArray *)normalizedShape beta:(MLCTensor *)beta gamma:(MLCTensor *)gamma varianceEpsilon:(float)varianceEpsilon;
- (BOOL)allocateDataForOptimizer:(id)a3;
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (BOOL)isSupportedShapeForTensorSources:(id)a3;
- (BOOL)isValidTrainingParameters;
- (MLCLayerNormalizationLayer)initWithNormalizedShape:(id)a3 beta:(id)a4 gamma:(id)a5 varianceEpsilon:(float)a6;
- (id)description;
- (id)summarizedDOTDescription;
- (unint64_t)allocatedDataSizeForTraining:(BOOL)a3 optimizer:(id)a4;
- (unint64_t)parametersCount;
- (void)linkAssociatedTensors;
- (void)unlinkAssociatedTensors;
@end

@implementation MLCLayerNormalizationLayer

+ (MLCLayerNormalizationLayer)layerWithNormalizedShape:(NSArray *)normalizedShape beta:(MLCTensor *)beta gamma:(MLCTensor *)gamma varianceEpsilon:(float)varianceEpsilon
{
  v10 = gamma;
  v11 = beta;
  v12 = normalizedShape;
  v13 = [a1 alloc];
  *&v14 = varianceEpsilon;
  v15 = [v13 initWithNormalizedShape:v12 beta:v11 gamma:v10 varianceEpsilon:v14];

  return v15;
}

- (MLCLayerNormalizationLayer)initWithNormalizedShape:(id)a3 beta:(id)a4 gamma:(id)a5 varianceEpsilon:(float)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  if (![v12 count] || objc_msgSend(v12, "count") >= 4)
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCLayerNormalizationLayer initWithNormalizedShape:a2 beta:? gamma:? varianceEpsilon:?];
    }

LABEL_5:

    v16 = 0;
    goto LABEL_6;
  }

  if (a6 < 0.0)
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCLayerNormalizationLayer initWithNormalizedShape:a2 beta:? gamma:? varianceEpsilon:?];
    }

    goto LABEL_5;
  }

  v40 = a2;
  v18 = [v12 count];
  v41 = v14;
  v42 = v13;
  if (v13)
  {
    v19 = [v13 descriptor];
    v20 = [v19 dimensionCount];

    v21 = [v42 descriptor];
    v22 = [v21 shape];
    v23 = [v22 subarrayWithRange:{v20 - v18, v18}];
    v24 = [v23 isEqualToArray:v12];

    v14 = v41;
    v13 = v42;
    if ((v24 & 1) == 0)
    {
      v15 = +[MLCLog framework];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [MLCLayerNormalizationLayer initWithNormalizedShape:v40 beta:? gamma:? varianceEpsilon:?];
      }

      goto LABEL_5;
    }
  }

  if (!v14)
  {
    goto LABEL_14;
  }

  v25 = [v14 descriptor];
  v26 = [v25 dimensionCount];

  v27 = [v14 descriptor];
  v28 = [v27 shape];
  v29 = [v28 subarrayWithRange:{v26 - v18, v18}];
  v30 = [v29 isEqualToArray:v12];

  v14 = v41;
  if ((v30 & 1) == 0)
  {
    v35 = +[MLCLog framework];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [MLCLayerNormalizationLayer initWithNormalizedShape:v40 beta:? gamma:? varianceEpsilon:?];
    }

    v16 = 0;
    v13 = v42;
  }

  else
  {
LABEL_14:
    v13 = v42;
    if ((v42 == 0) != (v14 == 0))
    {
      v15 = +[MLCLog framework];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [MLCLayerNormalizationLayer initWithNormalizedShape:v40 beta:? gamma:? varianceEpsilon:?];
      }

      goto LABEL_5;
    }

    v44.receiver = self;
    v44.super_class = MLCLayerNormalizationLayer;
    v31 = [(MLCLayer *)&v44 initWithLabel:@"LayerNorm"];
    v32 = v31;
    if (v31)
    {
      objc_storeStrong(&v31->_normalizedShape, a3);
      objc_storeStrong(&v32->_beta, a4);
      objc_storeStrong(&v32->_gamma, a5);
      v32->_varianceEpsilon = a6;
      if (v42)
      {
        v33 = [MLCTensorParameter parameterWithTensor:v42];
        betaParameter = v32->_betaParameter;
        v32->_betaParameter = v33;

        [(MLCTensor *)v32->_beta setIsLayerParameter:1];
      }

      else
      {
        v36 = v32->_betaParameter;
        v32->_betaParameter = 0;
      }

      if (v14)
      {
        v37 = [MLCTensorParameter parameterWithTensor:v14];
        gammaParameter = v32->_gammaParameter;
        v32->_gammaParameter = v37;

        [(MLCTensor *)v32->_gamma setIsLayerParameter:1];
      }

      else
      {
        v39 = v32->_gammaParameter;
        v32->_gammaParameter = 0;
      }

      v43.receiver = v32;
      v43.super_class = MLCLayerNormalizationLayer;
      [(MLCLayer *)&v43 setIsUpdatable:1];
    }

    self = v32;
    v16 = self;
  }

LABEL_6:

  return v16;
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [&unk_284BA60B0 mutableCopy];
  if ([v9 type] == 3)
  {
    [v12 addObject:&unk_284BA5B40];
  }

  v13 = [(MLCLayerNormalizationLayer *)self beta];

  if (!v13)
  {
    goto LABEL_8;
  }

  v14 = [(MLCLayerNormalizationLayer *)self beta];
  v15 = [v14 isTensorDataTypeInListOfDataTypes:v12];

  if ((v15 & 1) == 0)
  {
    v19 = +[MLCLog framework];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MLCLayerNormalizationLayer compileForDevice:a2 sourceTensors:self resultTensor:?];
    }

    goto LABEL_21;
  }

  v16 = [(MLCLayerNormalizationLayer *)self beta];
  v17 = [v16 parentLayers];
  v18 = [v17 count];

  if (!v18)
  {
LABEL_8:
    v20 = [(MLCLayerNormalizationLayer *)self gamma];

    if (v20)
    {
      v21 = [(MLCLayerNormalizationLayer *)self gamma];
      v22 = [v21 isTensorDataTypeInListOfDataTypes:v12];

      if ((v22 & 1) == 0)
      {
        v19 = +[MLCLog framework];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [MLCLayerNormalizationLayer compileForDevice:a2 sourceTensors:self resultTensor:?];
        }

        goto LABEL_21;
      }

      v23 = [(MLCLayerNormalizationLayer *)self gamma];
      v24 = [v23 parentLayers];
      v25 = [v24 count];

      if (v25)
      {
        v19 = +[MLCLog framework];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [MLCLayerNormalizationLayer compileForDevice:a2 sourceTensors:self resultTensor:?];
        }

        goto LABEL_21;
      }
    }

    v55 = a2;
    v56 = v11;
    v19 = [v10 objectAtIndexedSubscript:0];
    v26 = [(MLCLayerNormalizationLayer *)self normalizedShape];
    v27 = [v26 count];

    v28 = [v19 descriptor];
    v29 = [v28 dimensionCount];

    v30 = [v19 descriptor];
    v31 = [v30 shape];
    v32 = [v31 subarrayWithRange:{v29 - v27, v27}];
    v33 = [(MLCLayerNormalizationLayer *)self normalizedShape];
    v34 = [v32 isEqualToArray:v33];

    if (v34)
    {
      v35 = [(MLCLayer *)self fusedLayers];
      v36 = [v35 count];

      if (!v36)
      {
        goto LABEL_18;
      }

      v37 = [(MLCLayer *)self fusedLayers];
      v38 = [v37 objectAtIndexedSubscript:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v46 = [(MLCLayer *)self fusedLayers];
        v54 = [v46 objectAtIndexedSubscript:0];

        v41 = [v9 computeEngine];
        v42 = [v54 descriptor];
        v43 = [(MLCLayerNormalizationLayer *)self normalizedShape];
        v53 = [(MLCLayerNormalizationLayer *)self beta];
        v47 = [(MLCLayerNormalizationLayer *)self gamma];
        [(MLCLayerNormalizationLayer *)self varianceEpsilon];
        v44 = [v41 fusedLayerNormalizationAndNeuronLayerWithDescriptor:v42 normalizedShape:v43 beta:v53 gamma:v47 varianceEpsilon:?];

        v40 = v54;
      }

      else
      {
LABEL_18:
        v40 = [v9 computeEngine];
        v41 = [(MLCLayerNormalizationLayer *)self normalizedShape];
        v42 = [(MLCLayerNormalizationLayer *)self beta];
        v43 = [(MLCLayerNormalizationLayer *)self gamma];
        [(MLCLayerNormalizationLayer *)self varianceEpsilon];
        v44 = [v40 layerNormalizationLayerWithNormalizedShape:v41 beta:v42 gamma:v43 varianceEpsilon:1 isFusedWithArithmeticLayer:?];
      }

      if (v44 && [v44 count])
      {
        v48 = [v9 computeEngine];
        v49 = objc_opt_respondsToSelector();

        v11 = v56;
        if (v49)
        {
          v50 = [v9 computeEngine];
          v45 = [v50 compileLayerDeviceOps:v44 sourceTensors:v10 resultTensor:v56];
        }

        else
        {
          v45 = 1;
        }

        v57.receiver = self;
        v57.super_class = MLCLayerNormalizationLayer;
        [(MLCLayer *)&v57 bindDevice:v9 deviceOps:v44];
        goto LABEL_33;
      }

      v51 = +[MLCLog framework];
      v11 = v56;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [MLCScatterLayer compileForDevice:v55 sourceTensors:? resultTensor:?];
      }
    }

    else
    {
      v44 = +[MLCLog framework];
      v11 = v56;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        [MLCLayerNormalizationLayer compileForDevice:v55 sourceTensors:? resultTensor:?];
      }
    }

    v45 = 0;
LABEL_33:

    goto LABEL_34;
  }

  v19 = +[MLCLog framework];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [MLCLayerNormalizationLayer compileForDevice:a2 sourceTensors:self resultTensor:?];
  }

LABEL_21:
  v45 = 0;
LABEL_34:

  return v45;
}

- (BOOL)allocateDataForOptimizer:(id)a3
{
  v4 = a3;
  v5 = [(MLCLayerNormalizationLayer *)self beta];

  if (v5)
  {
    v6 = [(MLCLayerNormalizationLayer *)self betaParameter];
    v7 = [(MLCLayer *)self device];
    [v6 allocateDataForOptimizer:v4 device:v7 isVector:1];
  }

  v8 = [(MLCLayerNormalizationLayer *)self gamma];

  if (v8)
  {
    v9 = [(MLCLayerNormalizationLayer *)self gammaParameter];
    v10 = [(MLCLayer *)self device];
    [v9 allocateDataForOptimizer:v4 device:v10 isVector:1];
  }

  v11 = [(MLCLayer *)self device];
  v12 = [v11 computeEngine];
  v13 = [(MLCLayer *)self deviceOps];
  v14 = [(MLCLayerNormalizationLayer *)self beta];
  v15 = [(MLCLayerNormalizationLayer *)self gamma];
  [v12 setNormalizationLayerOptimizerDataForDeviceOps:v13 beta:v14 gamma:v15];

  return 1;
}

- (unint64_t)allocatedDataSizeForTraining:(BOOL)a3 optimizer:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(MLCLayerNormalizationLayer *)self beta];
  v8 = [v7 descriptor];
  v9 = [v8 tensorAllocationSizeInBytes];
  v10 = [(MLCLayerNormalizationLayer *)self gamma];
  v11 = [v10 descriptor];
  v12 = [v11 tensorAllocationSizeInBytes] + v9;

  if (v4)
  {
    v12 += v12 * [v6 numOptimizerDataBuffers];
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCLayerNormalizationLayer *)self beta];
  v7 = [(MLCLayerNormalizationLayer *)self gamma];
  [(MLCLayerNormalizationLayer *)self varianceEpsilon];
  v9 = v8;
  v10 = [(MLCLayer *)self conditionalTreeNode];
  v11 = [(MLCLayer *)self resultTensors];
  v12 = [v3 stringWithFormat:@"%@: { beta=%@ : gamma=%@ : varianceEpsilon=%f : conditionalTreeNode=%@ : resultTensor=%@ }", v5, v6, v7, *&v9, v10, v11];

  return v12;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCLayer *)self layerID];
  v7 = [(MLCLayerNormalizationLayer *)self normalizedShape];
  [(MLCLayerNormalizationLayer *)self varianceEpsilon];
  v9 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Normalized Shape: %@<BR />Variance Epsilon: %.03f</FONT>>", v5, v6, v7, v8];

  return v9;
}

- (void)linkAssociatedTensors
{
  v3 = [(MLCLayerNormalizationLayer *)self beta];
  v4 = [v3 childLayers];
  [v4 addObject:self];

  v6 = [(MLCLayerNormalizationLayer *)self gamma];
  v5 = [v6 childLayers];
  [v5 addObject:self];
}

- (void)unlinkAssociatedTensors
{
  v3 = [(MLCLayerNormalizationLayer *)self beta];
  v4 = [v3 childLayers];
  [v4 removeObject:self];

  v6 = [(MLCLayerNormalizationLayer *)self gamma];
  v5 = [v6 childLayers];
  [v5 removeObject:self];
}

- (BOOL)isValidTrainingParameters
{
  v3 = [(MLCLayerNormalizationLayer *)self beta];
  if (v3)
  {
    v4 = [(MLCLayerNormalizationLayer *)self gamma];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isSupportedShapeForTensorSources:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = 0;
    do
    {
      v5 = [v3 objectAtIndexedSubscript:v4];
      v6 = [v5 descriptor];
      v7 = [v6 shape];
      v8 = [v7 count];

      v9 = v8 > 1;
      if (v8 <= 1)
      {
        break;
      }

      ++v4;
    }

    while (v4 < [v3 count]);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (unint64_t)parametersCount
{
  v3 = [(MLCLayerNormalizationLayer *)self betaParameter];

  v4 = [(MLCLayerNormalizationLayer *)self gammaParameter];

  v5 = 1;
  if (v3)
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return v3 != 0;
  }
}

- (void)initWithNormalizedShape:(const char *)a1 beta:gamma:varianceEpsilon:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithNormalizedShape:(const char *)a1 beta:gamma:varianceEpsilon:.cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithNormalizedShape:(const char *)a1 beta:gamma:varianceEpsilon:.cold.3(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithNormalizedShape:(const char *)a1 beta:gamma:varianceEpsilon:.cold.4(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithNormalizedShape:(const char *)a1 beta:gamma:varianceEpsilon:.cold.5(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:(void *)a2 resultTensor:.cold.1(const char *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v4 = [a2 beta];
  v5 = [a2 beta];
  v6 = [v5 descriptor];
  [v6 dataType];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0(&dword_238C1D000, v7, v8, "%@: beta tensor (%@) in LayerNormalization uses an unsupported data type=%d", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:(void *)a2 resultTensor:.cold.2(const char *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v4 = [a2 beta];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:(void *)a2 resultTensor:.cold.3(const char *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v4 = [a2 gamma];
  v5 = [a2 gamma];
  v6 = [v5 descriptor];
  [v6 dataType];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0(&dword_238C1D000, v7, v8, "%@: gamma tensor (%@) in LayerNormalization uses an unsupported data type=%d", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:(void *)a2 resultTensor:.cold.4(const char *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v4 = [a2 gamma];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.5(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end