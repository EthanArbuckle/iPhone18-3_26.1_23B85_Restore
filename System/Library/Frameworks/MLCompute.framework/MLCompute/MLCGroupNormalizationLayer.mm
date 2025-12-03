@interface MLCGroupNormalizationLayer
+ (MLCGroupNormalizationLayer)layerWithFeatureChannelCount:(NSUInteger)featureChannelCount groupCount:(NSUInteger)groupCount beta:(MLCTensor *)beta gamma:(MLCTensor *)gamma varianceEpsilon:(float)varianceEpsilon;
- (BOOL)allocateDataForOptimizer:(id)optimizer;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (BOOL)isSupportedShapeForTensorSources:(id)sources;
- (BOOL)isValidTrainingParameters;
- (MLCGroupNormalizationLayer)initWithFeatureChannelCount:(unint64_t)count groupCount:(unint64_t)groupCount beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon;
- (id)description;
- (id)summarizedDOTDescription;
- (unint64_t)allocatedDataSizeForTraining:(BOOL)training optimizer:(id)optimizer;
- (unint64_t)parametersCount;
- (void)linkAssociatedTensors;
- (void)unlinkAssociatedTensors;
@end

@implementation MLCGroupNormalizationLayer

+ (MLCGroupNormalizationLayer)layerWithFeatureChannelCount:(NSUInteger)featureChannelCount groupCount:(NSUInteger)groupCount beta:(MLCTensor *)beta gamma:(MLCTensor *)gamma varianceEpsilon:(float)varianceEpsilon
{
  v12 = gamma;
  v13 = beta;
  v14 = [self alloc];
  *&v15 = varianceEpsilon;
  v16 = [v14 initWithFeatureChannelCount:featureChannelCount groupCount:groupCount beta:v13 gamma:v12 varianceEpsilon:v15];

  return v16;
}

- (MLCGroupNormalizationLayer)initWithFeatureChannelCount:(unint64_t)count groupCount:(unint64_t)groupCount beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon
{
  betaCopy = beta;
  gammaCopy = gamma;
  if (!count)
  {
    v16 = +[MLCLog framework];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MLCGroupNormalizationLayer initWithFeatureChannelCount:a2 groupCount:? beta:? gamma:? varianceEpsilon:?];
    }

    goto LABEL_45;
  }

  if (!groupCount)
  {
    v16 = +[MLCLog framework];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MLCGroupNormalizationLayer initWithFeatureChannelCount:a2 groupCount:? beta:? gamma:? varianceEpsilon:?];
    }

    goto LABEL_45;
  }

  if (groupCount > count)
  {
    v16 = +[MLCLog framework];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MLCGroupNormalizationLayer initWithFeatureChannelCount:a2 groupCount:? beta:? gamma:? varianceEpsilon:?];
    }

LABEL_45:

    selfCopy = 0;
    goto LABEL_46;
  }

  if (count % groupCount)
  {
    v16 = +[MLCLog framework];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MLCGroupNormalizationLayer initWithFeatureChannelCount:a2 groupCount:? beta:? gamma:? varianceEpsilon:?];
    }

    goto LABEL_45;
  }

  if (epsilon < 0.0)
  {
    v16 = +[MLCLog framework];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MLCGroupNormalizationLayer initWithFeatureChannelCount:a2 groupCount:? beta:? gamma:? varianceEpsilon:?];
    }

    goto LABEL_45;
  }

  if (betaCopy)
  {
    descriptor = [betaCopy descriptor];
    shape = [descriptor shape];
    v18 = [shape objectAtIndexedSubscript:3];
    if ([v18 unsignedIntegerValue] == 1)
    {
      v55 = v18;
      v57 = shape;
      descriptor2 = [betaCopy descriptor];
      shape2 = [descriptor2 shape];
      v20 = [shape2 objectAtIndexedSubscript:2];
      if ([v20 unsignedIntegerValue] == 1)
      {
        v49 = v20;
        v51 = shape2;
        descriptor3 = [betaCopy descriptor];
        shape3 = [descriptor3 shape];
        v21 = [shape3 objectAtIndexedSubscript:1];
        if ([v21 unsignedIntegerValue] == count)
        {
          descriptor4 = [betaCopy descriptor];
          shape4 = [descriptor4 shape];
          v22 = [shape4 objectAtIndexedSubscript:0];
          unsignedIntegerValue = [v22 unsignedIntegerValue];

          if (unsignedIntegerValue == 1)
          {
            goto LABEL_21;
          }

LABEL_32:
          v16 = +[MLCLog framework];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [MLCGroupNormalizationLayer initWithFeatureChannelCount:a2 groupCount:? beta:? gamma:? varianceEpsilon:?];
          }

          goto LABEL_45;
        }

        v20 = v49;
      }

      v18 = v55;
      shape = v57;
    }

    goto LABEL_32;
  }

LABEL_21:
  if (gammaCopy)
  {
    descriptor5 = [gammaCopy descriptor];
    shape5 = [descriptor5 shape];
    v24 = [shape5 objectAtIndexedSubscript:3];
    if ([v24 unsignedIntegerValue] == 1)
    {
      v56 = v24;
      v58 = shape5;
      descriptor6 = [gammaCopy descriptor];
      shape6 = [descriptor6 shape];
      v26 = [shape6 objectAtIndexedSubscript:2];
      if ([v26 unsignedIntegerValue] == 1)
      {
        v50 = v26;
        v52 = shape6;
        descriptor7 = [gammaCopy descriptor];
        shape7 = [descriptor7 shape];
        v27 = [shape7 objectAtIndexedSubscript:1];
        if ([v27 unsignedIntegerValue] == count)
        {
          descriptor8 = [gammaCopy descriptor];
          shape8 = [descriptor8 shape];
          v28 = [shape8 objectAtIndexedSubscript:0];
          unsignedIntegerValue2 = [v28 unsignedIntegerValue];

          if (unsignedIntegerValue2 == 1)
          {
            goto LABEL_26;
          }

LABEL_43:
          v16 = +[MLCLog framework];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            [MLCGroupNormalizationLayer initWithFeatureChannelCount:a2 groupCount:? beta:? gamma:? varianceEpsilon:?];
          }

          goto LABEL_45;
        }

        v26 = v50;
      }

      v24 = v56;
      shape5 = v58;
    }

    goto LABEL_43;
  }

LABEL_26:
  v62.receiver = self;
  v62.super_class = MLCGroupNormalizationLayer;
  v29 = [(MLCLayer *)&v62 initWithLabel:@"GroupNorm"];
  v30 = v29;
  if (v29)
  {
    v29->_featureChannelCount = count;
    v29->_groupCount = groupCount;
    objc_storeStrong(&v29->_beta, beta);
    objc_storeStrong(&v30->_gamma, gamma);
    v30->_varianceEpsilon = epsilon;
    if (betaCopy)
    {
      v31 = [MLCTensorParameter parameterWithTensor:betaCopy];
      betaParameter = v30->_betaParameter;
      v30->_betaParameter = v31;

      [(MLCTensor *)v30->_beta setIsLayerParameter:1];
    }

    else
    {
      v33 = v30->_betaParameter;
      v30->_betaParameter = 0;
    }

    if (gammaCopy)
    {
      v34 = [MLCTensorParameter parameterWithTensor:gammaCopy];
      gammaParameter = v30->_gammaParameter;
      v30->_gammaParameter = v34;

      [(MLCTensor *)v30->_gamma setIsLayerParameter:1];
    }

    else
    {
      v36 = v30->_gammaParameter;
      v30->_gammaParameter = 0;
    }

    v61.receiver = v30;
    v61.super_class = MLCGroupNormalizationLayer;
    [(MLCLayer *)&v61 setIsUpdatable:1];
  }

  self = v30;
  selfCopy = self;
LABEL_46:

  return selfCopy;
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  beta = [(MLCGroupNormalizationLayer *)self beta];

  if (beta)
  {
    beta2 = [(MLCGroupNormalizationLayer *)self beta];
    parentLayers = [beta2 parentLayers];
    v15 = [parentLayers count];

    if (v15)
    {
      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [MLCGroupNormalizationLayer compileForDevice:a2 sourceTensors:self resultTensor:?];
      }

LABEL_19:
      v39 = 0;
      goto LABEL_20;
    }
  }

  gamma = [(MLCGroupNormalizationLayer *)self gamma];

  if (gamma)
  {
    gamma2 = [(MLCGroupNormalizationLayer *)self gamma];
    parentLayers2 = [gamma2 parentLayers];
    v20 = [parentLayers2 count];

    if (v20)
    {
      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [MLCGroupNormalizationLayer compileForDevice:a2 sourceTensors:self resultTensor:?];
      }

      goto LABEL_19;
    }
  }

  fusedLayers = [(MLCLayer *)self fusedLayers];
  v22 = [fusedLayers count];

  v43 = deviceCopy;
  if (v22)
  {
    fusedLayers2 = [(MLCLayer *)self fusedLayers];
    computeEngine2 = [fusedLayers2 objectAtIndexedSubscript:0];

    computeEngine = [deviceCopy computeEngine];
    descriptor = [computeEngine2 descriptor];
    featureChannelCount = [(MLCGroupNormalizationLayer *)self featureChannelCount];
    v28 = tensorCopy;
    v29 = tensorsCopy;
    groupCount = [(MLCGroupNormalizationLayer *)self groupCount];
    beta3 = [(MLCGroupNormalizationLayer *)self beta];
    gamma3 = [(MLCGroupNormalizationLayer *)self gamma];
    [(MLCGroupNormalizationLayer *)self varianceEpsilon];
    v33 = groupCount;
    tensorsCopy = v29;
    tensorCopy = v28;
    v16 = [computeEngine fusedGroupNormalizationAndNeuronLayerWithDescriptor:descriptor featureChannelCount:featureChannelCount groupCount:v33 beta:beta3 gamma:gamma3 varianceEpsilon:?];
  }

  else
  {
    computeEngine2 = [deviceCopy computeEngine];
    featureChannelCount2 = [(MLCGroupNormalizationLayer *)self featureChannelCount];
    groupCount2 = [(MLCGroupNormalizationLayer *)self groupCount];
    computeEngine = [(MLCGroupNormalizationLayer *)self beta];
    descriptor = [(MLCGroupNormalizationLayer *)self gamma];
    [(MLCGroupNormalizationLayer *)self varianceEpsilon];
    v16 = [computeEngine2 groupNormalizationLayerWithFeatureChannelCount:featureChannelCount2 groupCount:groupCount2 beta:computeEngine gamma:descriptor varianceEpsilon:?];
  }

  if (!v16 || ![v16 count])
  {
    v40 = +[MLCLog framework];
    deviceCopy = v43;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [MLCScatterLayer compileForDevice:v42 sourceTensors:? resultTensor:?];
    }

    goto LABEL_19;
  }

  deviceCopy = v43;
  computeEngine3 = [v43 computeEngine];
  v37 = objc_opt_respondsToSelector();

  if (v37)
  {
    computeEngine4 = [v43 computeEngine];
    v39 = [computeEngine4 compileLayerDeviceOps:v16 sourceTensors:tensorsCopy resultTensor:tensorCopy];
  }

  else
  {
    v39 = 1;
  }

  v44.receiver = self;
  v44.super_class = MLCGroupNormalizationLayer;
  [(MLCLayer *)&v44 bindDevice:v43 deviceOps:v16];
LABEL_20:

  return v39;
}

- (BOOL)allocateDataForOptimizer:(id)optimizer
{
  optimizerCopy = optimizer;
  beta = [(MLCGroupNormalizationLayer *)self beta];

  if (beta)
  {
    betaParameter = [(MLCGroupNormalizationLayer *)self betaParameter];
    device = [(MLCLayer *)self device];
    [betaParameter allocateDataForOptimizer:optimizerCopy device:device isVector:1];
  }

  gamma = [(MLCGroupNormalizationLayer *)self gamma];

  if (gamma)
  {
    gammaParameter = [(MLCGroupNormalizationLayer *)self gammaParameter];
    device2 = [(MLCLayer *)self device];
    [gammaParameter allocateDataForOptimizer:optimizerCopy device:device2 isVector:1];
  }

  device3 = [(MLCLayer *)self device];
  computeEngine = [device3 computeEngine];
  deviceOps = [(MLCLayer *)self deviceOps];
  beta2 = [(MLCGroupNormalizationLayer *)self beta];
  gamma2 = [(MLCGroupNormalizationLayer *)self gamma];
  [computeEngine setNormalizationLayerOptimizerDataForDeviceOps:deviceOps beta:beta2 gamma:gamma2];

  return 1;
}

- (unint64_t)allocatedDataSizeForTraining:(BOOL)training optimizer:(id)optimizer
{
  trainingCopy = training;
  optimizerCopy = optimizer;
  beta = [(MLCGroupNormalizationLayer *)self beta];
  descriptor = [beta descriptor];
  tensorAllocationSizeInBytes = [descriptor tensorAllocationSizeInBytes];
  gamma = [(MLCGroupNormalizationLayer *)self gamma];
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
  featureChannelCount = [(MLCGroupNormalizationLayer *)self featureChannelCount];
  groupCount = [(MLCGroupNormalizationLayer *)self groupCount];
  beta = [(MLCGroupNormalizationLayer *)self beta];
  gamma = [(MLCGroupNormalizationLayer *)self gamma];
  [(MLCGroupNormalizationLayer *)self varianceEpsilon];
  v11 = v10;
  conditionalTreeNode = [(MLCLayer *)self conditionalTreeNode];
  resultTensors = [(MLCLayer *)self resultTensors];
  v14 = [v3 stringWithFormat:@"%@: { featureChannelCount=%lu : groupCount=%lu : beta=%@ : gamma=%@ : varianceEpsilon=%f : conditionalTreeNode=%@ : resultTensor=%@ }", v5, featureChannelCount, groupCount, beta, gamma, *&v11, conditionalTreeNode, resultTensors];

  return v14;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  layerID = [(MLCLayer *)self layerID];
  featureChannelCount = [(MLCGroupNormalizationLayer *)self featureChannelCount];
  groupCount = [(MLCGroupNormalizationLayer *)self groupCount];
  [(MLCGroupNormalizationLayer *)self varianceEpsilon];
  v10 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Feature Channel Count: %lu    Group Count: %lu<BR />Variance Epsilon: %.03f</FONT>>", v5, layerID, featureChannelCount, groupCount, v9];

  return v10;
}

- (void)linkAssociatedTensors
{
  beta = [(MLCGroupNormalizationLayer *)self beta];
  childLayers = [beta childLayers];
  [childLayers addObject:self];

  gamma = [(MLCGroupNormalizationLayer *)self gamma];
  childLayers2 = [gamma childLayers];
  [childLayers2 addObject:self];
}

- (void)unlinkAssociatedTensors
{
  beta = [(MLCGroupNormalizationLayer *)self beta];
  childLayers = [beta childLayers];
  [childLayers removeObject:self];

  gamma = [(MLCGroupNormalizationLayer *)self gamma];
  childLayers2 = [gamma childLayers];
  [childLayers2 removeObject:self];
}

- (BOOL)isValidTrainingParameters
{
  beta = [(MLCGroupNormalizationLayer *)self beta];
  if (beta)
  {
    gamma = [(MLCGroupNormalizationLayer *)self gamma];
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
  betaParameter = [(MLCGroupNormalizationLayer *)self betaParameter];

  gammaParameter = [(MLCGroupNormalizationLayer *)self gammaParameter];

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

- (void)initWithFeatureChannelCount:(const char *)a1 groupCount:beta:gamma:varianceEpsilon:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithFeatureChannelCount:(const char *)a1 groupCount:beta:gamma:varianceEpsilon:.cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithFeatureChannelCount:(const char *)a1 groupCount:beta:gamma:varianceEpsilon:.cold.3(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithFeatureChannelCount:(const char *)a1 groupCount:beta:gamma:varianceEpsilon:.cold.4(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithFeatureChannelCount:(const char *)a1 groupCount:beta:gamma:varianceEpsilon:.cold.5(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithFeatureChannelCount:(const char *)a1 groupCount:beta:gamma:varianceEpsilon:.cold.6(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithFeatureChannelCount:(const char *)a1 groupCount:beta:gamma:varianceEpsilon:.cold.7(const char *a1)
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
  v11 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v4 = [a2 beta];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:(void *)a2 resultTensor:.cold.2(const char *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v4 = [a2 gamma];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

@end