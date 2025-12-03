@interface MLCLayerNormalizationLayer
+ (MLCLayerNormalizationLayer)layerWithNormalizedShape:(NSArray *)normalizedShape beta:(MLCTensor *)beta gamma:(MLCTensor *)gamma varianceEpsilon:(float)varianceEpsilon;
- (BOOL)allocateDataForOptimizer:(id)optimizer;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (BOOL)isSupportedShapeForTensorSources:(id)sources;
- (BOOL)isValidTrainingParameters;
- (MLCLayerNormalizationLayer)initWithNormalizedShape:(id)shape beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon;
- (id)description;
- (id)summarizedDOTDescription;
- (unint64_t)allocatedDataSizeForTraining:(BOOL)training optimizer:(id)optimizer;
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
  v13 = [self alloc];
  *&v14 = varianceEpsilon;
  v15 = [v13 initWithNormalizedShape:v12 beta:v11 gamma:v10 varianceEpsilon:v14];

  return v15;
}

- (MLCLayerNormalizationLayer)initWithNormalizedShape:(id)shape beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon
{
  shapeCopy = shape;
  betaCopy = beta;
  gammaCopy = gamma;
  if (![shapeCopy count] || objc_msgSend(shapeCopy, "count") >= 4)
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCLayerNormalizationLayer initWithNormalizedShape:a2 beta:? gamma:? varianceEpsilon:?];
    }

LABEL_5:

    selfCopy = 0;
    goto LABEL_6;
  }

  if (epsilon < 0.0)
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCLayerNormalizationLayer initWithNormalizedShape:a2 beta:? gamma:? varianceEpsilon:?];
    }

    goto LABEL_5;
  }

  v40 = a2;
  v18 = [shapeCopy count];
  v41 = gammaCopy;
  v42 = betaCopy;
  if (betaCopy)
  {
    descriptor = [betaCopy descriptor];
    dimensionCount = [descriptor dimensionCount];

    descriptor2 = [v42 descriptor];
    shape = [descriptor2 shape];
    v23 = [shape subarrayWithRange:{dimensionCount - v18, v18}];
    v24 = [v23 isEqualToArray:shapeCopy];

    gammaCopy = v41;
    betaCopy = v42;
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

  if (!gammaCopy)
  {
    goto LABEL_14;
  }

  descriptor3 = [gammaCopy descriptor];
  dimensionCount2 = [descriptor3 dimensionCount];

  descriptor4 = [gammaCopy descriptor];
  shape2 = [descriptor4 shape];
  v29 = [shape2 subarrayWithRange:{dimensionCount2 - v18, v18}];
  v30 = [v29 isEqualToArray:shapeCopy];

  gammaCopy = v41;
  if ((v30 & 1) == 0)
  {
    v35 = +[MLCLog framework];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [MLCLayerNormalizationLayer initWithNormalizedShape:v40 beta:? gamma:? varianceEpsilon:?];
    }

    selfCopy = 0;
    betaCopy = v42;
  }

  else
  {
LABEL_14:
    betaCopy = v42;
    if ((v42 == 0) != (gammaCopy == 0))
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
      objc_storeStrong(&v31->_normalizedShape, shape);
      objc_storeStrong(&v32->_beta, beta);
      objc_storeStrong(&v32->_gamma, gamma);
      v32->_varianceEpsilon = epsilon;
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

      if (gammaCopy)
      {
        v37 = [MLCTensorParameter parameterWithTensor:gammaCopy];
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
    selfCopy = self;
  }

LABEL_6:

  return selfCopy;
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v12 = [&unk_284BA60B0 mutableCopy];
  if ([deviceCopy type] == 3)
  {
    [v12 addObject:&unk_284BA5B40];
  }

  beta = [(MLCLayerNormalizationLayer *)self beta];

  if (!beta)
  {
    goto LABEL_8;
  }

  beta2 = [(MLCLayerNormalizationLayer *)self beta];
  v15 = [beta2 isTensorDataTypeInListOfDataTypes:v12];

  if ((v15 & 1) == 0)
  {
    v19 = +[MLCLog framework];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MLCLayerNormalizationLayer compileForDevice:a2 sourceTensors:self resultTensor:?];
    }

    goto LABEL_21;
  }

  beta3 = [(MLCLayerNormalizationLayer *)self beta];
  parentLayers = [beta3 parentLayers];
  v18 = [parentLayers count];

  if (!v18)
  {
LABEL_8:
    gamma = [(MLCLayerNormalizationLayer *)self gamma];

    if (gamma)
    {
      gamma2 = [(MLCLayerNormalizationLayer *)self gamma];
      v22 = [gamma2 isTensorDataTypeInListOfDataTypes:v12];

      if ((v22 & 1) == 0)
      {
        v19 = +[MLCLog framework];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [MLCLayerNormalizationLayer compileForDevice:a2 sourceTensors:self resultTensor:?];
        }

        goto LABEL_21;
      }

      gamma3 = [(MLCLayerNormalizationLayer *)self gamma];
      parentLayers2 = [gamma3 parentLayers];
      v25 = [parentLayers2 count];

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
    v56 = tensorCopy;
    v19 = [tensorsCopy objectAtIndexedSubscript:0];
    normalizedShape = [(MLCLayerNormalizationLayer *)self normalizedShape];
    v27 = [normalizedShape count];

    descriptor = [v19 descriptor];
    dimensionCount = [descriptor dimensionCount];

    descriptor2 = [v19 descriptor];
    shape = [descriptor2 shape];
    v32 = [shape subarrayWithRange:{dimensionCount - v27, v27}];
    normalizedShape2 = [(MLCLayerNormalizationLayer *)self normalizedShape];
    v34 = [v32 isEqualToArray:normalizedShape2];

    if (v34)
    {
      fusedLayers = [(MLCLayer *)self fusedLayers];
      v36 = [fusedLayers count];

      if (!v36)
      {
        goto LABEL_18;
      }

      fusedLayers2 = [(MLCLayer *)self fusedLayers];
      v38 = [fusedLayers2 objectAtIndexedSubscript:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        fusedLayers3 = [(MLCLayer *)self fusedLayers];
        v54 = [fusedLayers3 objectAtIndexedSubscript:0];

        computeEngine = [deviceCopy computeEngine];
        descriptor3 = [v54 descriptor];
        normalizedShape3 = [(MLCLayerNormalizationLayer *)self normalizedShape];
        beta4 = [(MLCLayerNormalizationLayer *)self beta];
        gamma4 = [(MLCLayerNormalizationLayer *)self gamma];
        [(MLCLayerNormalizationLayer *)self varianceEpsilon];
        v44 = [computeEngine fusedLayerNormalizationAndNeuronLayerWithDescriptor:descriptor3 normalizedShape:normalizedShape3 beta:beta4 gamma:gamma4 varianceEpsilon:?];

        computeEngine2 = v54;
      }

      else
      {
LABEL_18:
        computeEngine2 = [deviceCopy computeEngine];
        computeEngine = [(MLCLayerNormalizationLayer *)self normalizedShape];
        descriptor3 = [(MLCLayerNormalizationLayer *)self beta];
        normalizedShape3 = [(MLCLayerNormalizationLayer *)self gamma];
        [(MLCLayerNormalizationLayer *)self varianceEpsilon];
        v44 = [computeEngine2 layerNormalizationLayerWithNormalizedShape:computeEngine beta:descriptor3 gamma:normalizedShape3 varianceEpsilon:1 isFusedWithArithmeticLayer:?];
      }

      if (v44 && [v44 count])
      {
        computeEngine3 = [deviceCopy computeEngine];
        v49 = objc_opt_respondsToSelector();

        tensorCopy = v56;
        if (v49)
        {
          computeEngine4 = [deviceCopy computeEngine];
          v45 = [computeEngine4 compileLayerDeviceOps:v44 sourceTensors:tensorsCopy resultTensor:v56];
        }

        else
        {
          v45 = 1;
        }

        v57.receiver = self;
        v57.super_class = MLCLayerNormalizationLayer;
        [(MLCLayer *)&v57 bindDevice:deviceCopy deviceOps:v44];
        goto LABEL_33;
      }

      v51 = +[MLCLog framework];
      tensorCopy = v56;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [MLCScatterLayer compileForDevice:v55 sourceTensors:? resultTensor:?];
      }
    }

    else
    {
      v44 = +[MLCLog framework];
      tensorCopy = v56;
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

- (BOOL)allocateDataForOptimizer:(id)optimizer
{
  optimizerCopy = optimizer;
  beta = [(MLCLayerNormalizationLayer *)self beta];

  if (beta)
  {
    betaParameter = [(MLCLayerNormalizationLayer *)self betaParameter];
    device = [(MLCLayer *)self device];
    [betaParameter allocateDataForOptimizer:optimizerCopy device:device isVector:1];
  }

  gamma = [(MLCLayerNormalizationLayer *)self gamma];

  if (gamma)
  {
    gammaParameter = [(MLCLayerNormalizationLayer *)self gammaParameter];
    device2 = [(MLCLayer *)self device];
    [gammaParameter allocateDataForOptimizer:optimizerCopy device:device2 isVector:1];
  }

  device3 = [(MLCLayer *)self device];
  computeEngine = [device3 computeEngine];
  deviceOps = [(MLCLayer *)self deviceOps];
  beta2 = [(MLCLayerNormalizationLayer *)self beta];
  gamma2 = [(MLCLayerNormalizationLayer *)self gamma];
  [computeEngine setNormalizationLayerOptimizerDataForDeviceOps:deviceOps beta:beta2 gamma:gamma2];

  return 1;
}

- (unint64_t)allocatedDataSizeForTraining:(BOOL)training optimizer:(id)optimizer
{
  trainingCopy = training;
  optimizerCopy = optimizer;
  beta = [(MLCLayerNormalizationLayer *)self beta];
  descriptor = [beta descriptor];
  tensorAllocationSizeInBytes = [descriptor tensorAllocationSizeInBytes];
  gamma = [(MLCLayerNormalizationLayer *)self gamma];
  descriptor2 = [gamma descriptor];
  v12 = [descriptor2 tensorAllocationSizeInBytes] + tensorAllocationSizeInBytes;

  if (trainingCopy)
  {
    v12 += v12 * [optimizerCopy numOptimizerDataBuffers];
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  beta = [(MLCLayerNormalizationLayer *)self beta];
  gamma = [(MLCLayerNormalizationLayer *)self gamma];
  [(MLCLayerNormalizationLayer *)self varianceEpsilon];
  v9 = v8;
  conditionalTreeNode = [(MLCLayer *)self conditionalTreeNode];
  resultTensors = [(MLCLayer *)self resultTensors];
  v12 = [v3 stringWithFormat:@"%@: { beta=%@ : gamma=%@ : varianceEpsilon=%f : conditionalTreeNode=%@ : resultTensor=%@ }", v5, beta, gamma, *&v9, conditionalTreeNode, resultTensors];

  return v12;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  layerID = [(MLCLayer *)self layerID];
  normalizedShape = [(MLCLayerNormalizationLayer *)self normalizedShape];
  [(MLCLayerNormalizationLayer *)self varianceEpsilon];
  v9 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Normalized Shape: %@<BR />Variance Epsilon: %.03f</FONT>>", v5, layerID, normalizedShape, v8];

  return v9;
}

- (void)linkAssociatedTensors
{
  beta = [(MLCLayerNormalizationLayer *)self beta];
  childLayers = [beta childLayers];
  [childLayers addObject:self];

  gamma = [(MLCLayerNormalizationLayer *)self gamma];
  childLayers2 = [gamma childLayers];
  [childLayers2 addObject:self];
}

- (void)unlinkAssociatedTensors
{
  beta = [(MLCLayerNormalizationLayer *)self beta];
  childLayers = [beta childLayers];
  [childLayers removeObject:self];

  gamma = [(MLCLayerNormalizationLayer *)self gamma];
  childLayers2 = [gamma childLayers];
  [childLayers2 removeObject:self];
}

- (BOOL)isValidTrainingParameters
{
  beta = [(MLCLayerNormalizationLayer *)self beta];
  if (beta)
  {
    gamma = [(MLCLayerNormalizationLayer *)self gamma];
    v5 = gamma != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isSupportedShapeForTensorSources:(id)sources
{
  sourcesCopy = sources;
  if ([sourcesCopy count])
  {
    v4 = 0;
    do
    {
      v5 = [sourcesCopy objectAtIndexedSubscript:v4];
      descriptor = [v5 descriptor];
      shape = [descriptor shape];
      v8 = [shape count];

      v9 = v8 > 1;
      if (v8 <= 1)
      {
        break;
      }

      ++v4;
    }

    while (v4 < [sourcesCopy count]);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (unint64_t)parametersCount
{
  betaParameter = [(MLCLayerNormalizationLayer *)self betaParameter];

  gammaParameter = [(MLCLayerNormalizationLayer *)self gammaParameter];

  v5 = 1;
  if (betaParameter)
  {
    v5 = 2;
  }

  if (gammaParameter)
  {
    return v5;
  }

  else
  {
    return betaParameter != 0;
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