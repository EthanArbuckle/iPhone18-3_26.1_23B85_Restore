@interface MLCInstanceNormalizationLayer
+ (MLCInstanceNormalizationLayer)layerWithFeatureChannelCount:(NSUInteger)featureChannelCount beta:(MLCTensor *)beta gamma:(MLCTensor *)gamma varianceEpsilon:(float)varianceEpsilon;
+ (MLCInstanceNormalizationLayer)layerWithFeatureChannelCount:(NSUInteger)featureChannelCount beta:(MLCTensor *)beta gamma:(MLCTensor *)gamma varianceEpsilon:(float)varianceEpsilon momentum:(float)momentum;
+ (MLCInstanceNormalizationLayer)layerWithFeatureChannelCount:(NSUInteger)featureChannelCount mean:(MLCTensor *)mean variance:(MLCTensor *)variance beta:(MLCTensor *)beta gamma:(MLCTensor *)gamma varianceEpsilon:(float)varianceEpsilon momentum:(float)momentum;
- (BOOL)allocateDataForOptimizer:(id)optimizer;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (BOOL)isValidTrainingParameters;
- (MLCInstanceNormalizationLayer)initWithFeatureChannelCount:(unint64_t)count mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum;
- (id)description;
- (id)summarizedDOTDescription;
- (unint64_t)allocatedDataSizeForTraining:(BOOL)training optimizer:(id)optimizer;
- (unint64_t)parametersCount;
- (void)linkAssociatedTensors;
- (void)unlinkAssociatedTensors;
@end

@implementation MLCInstanceNormalizationLayer

+ (MLCInstanceNormalizationLayer)layerWithFeatureChannelCount:(NSUInteger)featureChannelCount beta:(MLCTensor *)beta gamma:(MLCTensor *)gamma varianceEpsilon:(float)varianceEpsilon
{
  v10 = gamma;
  v11 = beta;
  v12 = [self alloc];
  LODWORD(v13) = 1065185444;
  *&v14 = varianceEpsilon;
  v15 = [v12 initWithFeatureChannelCount:featureChannelCount mean:0 variance:0 beta:v11 gamma:v10 varianceEpsilon:v14 momentum:v13];

  return v15;
}

+ (MLCInstanceNormalizationLayer)layerWithFeatureChannelCount:(NSUInteger)featureChannelCount beta:(MLCTensor *)beta gamma:(MLCTensor *)gamma varianceEpsilon:(float)varianceEpsilon momentum:(float)momentum
{
  v12 = gamma;
  v13 = beta;
  v14 = [self alloc];
  *&v15 = varianceEpsilon;
  *&v16 = momentum;
  v17 = [v14 initWithFeatureChannelCount:featureChannelCount mean:0 variance:0 beta:v13 gamma:v12 varianceEpsilon:v15 momentum:v16];

  return v17;
}

+ (MLCInstanceNormalizationLayer)layerWithFeatureChannelCount:(NSUInteger)featureChannelCount mean:(MLCTensor *)mean variance:(MLCTensor *)variance beta:(MLCTensor *)beta gamma:(MLCTensor *)gamma varianceEpsilon:(float)varianceEpsilon momentum:(float)momentum
{
  v16 = gamma;
  v17 = beta;
  v18 = variance;
  v19 = mean;
  v20 = [self alloc];
  *&v21 = varianceEpsilon;
  *&v22 = momentum;
  v23 = [v20 initWithFeatureChannelCount:featureChannelCount mean:v19 variance:v18 beta:v17 gamma:v16 varianceEpsilon:v21 momentum:v22];

  return v23;
}

- (MLCInstanceNormalizationLayer)initWithFeatureChannelCount:(unint64_t)count mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum
{
  meanCopy = mean;
  obj = variance;
  varianceCopy = variance;
  betaCopy = beta;
  betaCopy2 = beta;
  gammaCopy = gamma;
  gammaCopy2 = gamma;
  if (meanCopy)
  {
    descriptor = [meanCopy descriptor];
    shape = [descriptor shape];
    v20 = [shape objectAtIndexedSubscript:3];
    if ([v20 unsignedIntegerValue] >= 2)
    {
    }

    else
    {
      [meanCopy descriptor];
      v21 = unsignedIntegerValue2 = self;
      shape2 = [v21 shape];
      [shape2 objectAtIndexedSubscript:2];
      v23 = gammaCopy2;
      v25 = v24 = varianceCopy;
      unsignedIntegerValue = [v25 unsignedIntegerValue];

      varianceCopy = v24;
      gammaCopy2 = v23;

      self = unsignedIntegerValue2;
      if (unsignedIntegerValue < 2)
      {
        goto LABEL_4;
      }
    }

    v54 = +[MLCLog framework];
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      [MLCInstanceNormalizationLayer initWithFeatureChannelCount:a2 mean:? variance:? beta:? gamma:? varianceEpsilon:? momentum:?];
    }

    goto LABEL_28;
  }

LABEL_4:
  if (!varianceCopy)
  {
    goto LABEL_7;
  }

  descriptor2 = [varianceCopy descriptor];
  shape3 = [descriptor2 shape];
  v29 = [shape3 objectAtIndexedSubscript:3];
  if ([v29 unsignedIntegerValue] >= 2)
  {

LABEL_20:
    v54 = +[MLCLog framework];
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      [MLCInstanceNormalizationLayer initWithFeatureChannelCount:a2 mean:? variance:? beta:? gamma:? varianceEpsilon:? momentum:?];
    }

    goto LABEL_28;
  }

  descriptor3 = [varianceCopy descriptor];
  [descriptor3 shape];
  v32 = v31 = self;
  [v32 objectAtIndexedSubscript:2];
  v33 = gammaCopy2;
  v35 = v34 = varianceCopy;
  unsignedIntegerValue2 = [v35 unsignedIntegerValue];

  varianceCopy = v34;
  gammaCopy2 = v33;

  self = v31;
  if (unsignedIntegerValue2 >= 2)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (!betaCopy2)
  {
    goto LABEL_10;
  }

  descriptor4 = [betaCopy2 descriptor];
  shape4 = [descriptor4 shape];
  v38 = [shape4 objectAtIndexedSubscript:3];
  if ([v38 unsignedIntegerValue] >= 2)
  {

LABEL_23:
    v54 = +[MLCLog framework];
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      [MLCInstanceNormalizationLayer initWithFeatureChannelCount:a2 mean:? variance:? beta:? gamma:? varianceEpsilon:? momentum:?];
    }

    goto LABEL_28;
  }

  descriptor5 = [betaCopy2 descriptor];
  [descriptor5 shape];
  v41 = v40 = self;
  [v41 objectAtIndexedSubscript:2];
  v42 = gammaCopy2;
  v44 = v43 = varianceCopy;
  unsignedIntegerValue2 = [v44 unsignedIntegerValue];

  varianceCopy = v43;
  gammaCopy2 = v42;

  self = v40;
  if (unsignedIntegerValue2 >= 2)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (!gammaCopy2)
  {
    goto LABEL_13;
  }

  descriptor6 = [gammaCopy2 descriptor];
  shape5 = [descriptor6 shape];
  v47 = [shape5 objectAtIndexedSubscript:3];
  if ([v47 unsignedIntegerValue] >= 2)
  {

LABEL_26:
    v54 = +[MLCLog framework];
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      [MLCInstanceNormalizationLayer initWithFeatureChannelCount:a2 mean:? variance:? beta:? gamma:? varianceEpsilon:? momentum:?];
    }

    goto LABEL_28;
  }

  descriptor7 = [gammaCopy2 descriptor];
  [descriptor7 shape];
  v50 = v49 = self;
  [v50 objectAtIndexedSubscript:2];
  v51 = gammaCopy2;
  v53 = v52 = varianceCopy;
  unsignedIntegerValue2 = [v53 unsignedIntegerValue];

  varianceCopy = v52;
  gammaCopy2 = v51;

  self = v49;
  if (unsignedIntegerValue2 >= 2)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((betaCopy2 == 0) != (gammaCopy2 == 0))
  {
    v54 = +[MLCLog framework];
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      [MLCInstanceNormalizationLayer initWithFeatureChannelCount:a2 mean:? variance:? beta:? gamma:? varianceEpsilon:? momentum:?];
    }

LABEL_28:

    selfCopy = 0;
    goto LABEL_29;
  }

  v74.receiver = self;
  v74.super_class = MLCInstanceNormalizationLayer;
  v57 = [(MLCLayer *)&v74 initWithLabel:@"InstanceNorm"];
  v58 = v57;
  if (v57)
  {
    v57->_featureChannelCount = count;
    objc_storeStrong(&v57->_mean, mean);
    objc_storeStrong(&v58->_variance, obj);
    objc_storeStrong(&v58->_beta, betaCopy);
    objc_storeStrong(&v58->_gamma, gammaCopy);
    v58->_varianceEpsilon = epsilon;
    v58->_momentum = momentum;
    if (betaCopy2)
    {
      v59 = [MLCTensorParameter parameterWithTensor:betaCopy2];
      betaParameter = v58->_betaParameter;
      v58->_betaParameter = v59;

      [(MLCTensor *)v58->_beta setIsLayerParameter:1];
    }

    else
    {
      v61 = v58->_betaParameter;
      v58->_betaParameter = 0;
    }

    if (gammaCopy2)
    {
      v62 = [MLCTensorParameter parameterWithTensor:gammaCopy2];
      gammaParameter = v58->_gammaParameter;
      v58->_gammaParameter = v62;

      [(MLCTensor *)v58->_gamma setIsLayerParameter:1];
    }

    else
    {
      v64 = v58->_gammaParameter;
      v58->_gammaParameter = 0;
    }

    v73.receiver = v58;
    v73.super_class = MLCInstanceNormalizationLayer;
    [(MLCLayer *)&v73 setIsUpdatable:1, unsignedIntegerValue2];
  }

  self = v58;
  selfCopy = self;
LABEL_29:

  return selfCopy;
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v9 = [&unk_284BA6200 mutableCopy];
  if ([deviceCopy type] == 3)
  {
    [v9 addObject:&unk_284BA5F30];
  }

  beta = [(MLCInstanceNormalizationLayer *)self beta];

  if (beta)
  {
    beta2 = [(MLCInstanceNormalizationLayer *)self beta];
    v12 = [beta2 isTensorDataTypeInListOfDataTypes:v9];

    if ((v12 & 1) == 0)
    {
      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [MLCInstanceNormalizationLayer compileForDevice:a2 sourceTensors:self resultTensor:?];
      }

      goto LABEL_26;
    }

    beta3 = [(MLCInstanceNormalizationLayer *)self beta];
    parentLayers = [beta3 parentLayers];
    v15 = [parentLayers count];

    if (v15)
    {
      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [MLCInstanceNormalizationLayer compileForDevice:a2 sourceTensors:self resultTensor:?];
      }

LABEL_26:
      v51 = 0;
      goto LABEL_27;
    }
  }

  gamma = [(MLCInstanceNormalizationLayer *)self gamma];

  if (gamma)
  {
    gamma2 = [(MLCInstanceNormalizationLayer *)self gamma];
    v19 = [gamma2 isTensorDataTypeInListOfDataTypes:v9];

    if ((v19 & 1) == 0)
    {
      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [MLCInstanceNormalizationLayer compileForDevice:a2 sourceTensors:self resultTensor:?];
      }

      goto LABEL_26;
    }

    gamma3 = [(MLCInstanceNormalizationLayer *)self gamma];
    parentLayers2 = [gamma3 parentLayers];
    v22 = [parentLayers2 count];

    if (v22)
    {
      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [MLCInstanceNormalizationLayer compileForDevice:a2 sourceTensors:self resultTensor:?];
      }

      goto LABEL_26;
    }
  }

  fusedLayers = [(MLCLayer *)self fusedLayers];
  v24 = [fusedLayers count];

  v55 = deviceCopy;
  if (v24)
  {
    fusedLayers2 = [(MLCLayer *)self fusedLayers];
    v54 = [fusedLayers2 objectAtIndexedSubscript:0];

    computeEngine = [deviceCopy computeEngine];
    descriptor = [v54 descriptor];
    featureChannelCount = [(MLCInstanceNormalizationLayer *)self featureChannelCount];
    mean = [(MLCInstanceNormalizationLayer *)self mean];
    variance = [(MLCInstanceNormalizationLayer *)self variance];
    beta4 = [(MLCInstanceNormalizationLayer *)self beta];
    gamma4 = [(MLCInstanceNormalizationLayer *)self gamma];
    [(MLCInstanceNormalizationLayer *)self varianceEpsilon];
    v34 = v33;
    [(MLCInstanceNormalizationLayer *)self momentum];
    LODWORD(v36) = v35;
    v37 = descriptor;
    v38 = featureChannelCount;
    v39 = mean;
    LODWORD(v40) = v34;
    v16 = [computeEngine fusedInstanceNormalizationAndNeuronLayerWithDescriptor:descriptor numOfFeatureChannels:v38 mean:mean variance:variance beta:beta4 gamma:gamma4 varianceEpsilon:v40 momentum:v36];

    computeEngine2 = v54;
  }

  else
  {
    computeEngine2 = [deviceCopy computeEngine];
    featureChannelCount2 = [(MLCInstanceNormalizationLayer *)self featureChannelCount];
    computeEngine = [(MLCInstanceNormalizationLayer *)self mean];
    variance2 = [(MLCInstanceNormalizationLayer *)self variance];
    beta5 = [(MLCInstanceNormalizationLayer *)self beta];
    variance = [(MLCInstanceNormalizationLayer *)self gamma];
    [(MLCInstanceNormalizationLayer *)self varianceEpsilon];
    v46 = v45;
    [(MLCInstanceNormalizationLayer *)self momentum];
    LODWORD(v48) = v47;
    v37 = variance2;
    v39 = beta5;
    LODWORD(v49) = v46;
    v16 = [computeEngine2 instanceNormalizationLayerWithChannelCount:featureChannelCount2 mean:computeEngine variance:variance2 beta:beta5 gamma:variance varianceEpsilon:v49 momentum:v48];
  }

  if (!v16 || ![v16 count])
  {
    v52 = +[MLCLog framework];
    deviceCopy = v55;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      [MLCScatterLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_26;
  }

  deviceCopy = v55;
  computeEngine3 = [v55 computeEngine];
  v51 = [computeEngine3 compileLayerDeviceOps:v16 sourceTensors:tensorsCopy resultTensor:tensorCopy];

  v59.receiver = self;
  v59.super_class = MLCInstanceNormalizationLayer;
  [(MLCLayer *)&v59 bindDevice:v55 deviceOps:v16];
LABEL_27:

  return v51;
}

- (BOOL)allocateDataForOptimizer:(id)optimizer
{
  optimizerCopy = optimizer;
  beta = [(MLCInstanceNormalizationLayer *)self beta];

  if (beta)
  {
    betaParameter = [(MLCInstanceNormalizationLayer *)self betaParameter];
    device = [(MLCLayer *)self device];
    [betaParameter allocateDataForOptimizer:optimizerCopy device:device isVector:1];
  }

  gamma = [(MLCInstanceNormalizationLayer *)self gamma];

  if (gamma)
  {
    gammaParameter = [(MLCInstanceNormalizationLayer *)self gammaParameter];
    device2 = [(MLCLayer *)self device];
    [gammaParameter allocateDataForOptimizer:optimizerCopy device:device2 isVector:1];
  }

  device3 = [(MLCLayer *)self device];
  computeEngine = [device3 computeEngine];
  deviceOps = [(MLCLayer *)self deviceOps];
  beta2 = [(MLCInstanceNormalizationLayer *)self beta];
  gamma2 = [(MLCInstanceNormalizationLayer *)self gamma];
  [computeEngine setNormalizationLayerOptimizerDataForDeviceOps:deviceOps beta:beta2 gamma:gamma2];

  return 1;
}

- (unint64_t)allocatedDataSizeForTraining:(BOOL)training optimizer:(id)optimizer
{
  trainingCopy = training;
  optimizerCopy = optimizer;
  beta = [(MLCInstanceNormalizationLayer *)self beta];
  descriptor = [beta descriptor];
  tensorAllocationSizeInBytes = [descriptor tensorAllocationSizeInBytes];
  gamma = [(MLCInstanceNormalizationLayer *)self gamma];
  descriptor2 = [gamma descriptor];
  v12 = [descriptor2 tensorAllocationSizeInBytes] + tensorAllocationSizeInBytes;

  if (trainingCopy)
  {
    gamma2 = [(MLCInstanceNormalizationLayer *)self gamma];
    descriptor3 = [gamma2 descriptor];
    tensorAllocationSizeInBytes2 = [descriptor3 tensorAllocationSizeInBytes];
    beta2 = [(MLCInstanceNormalizationLayer *)self beta];
    descriptor4 = [beta2 descriptor];
    v18 = [descriptor4 tensorAllocationSizeInBytes] + tensorAllocationSizeInBytes2;
    v12 += v18 * [optimizerCopy numOptimizerDataBuffers];
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  beta = [(MLCInstanceNormalizationLayer *)self beta];
  gamma = [(MLCInstanceNormalizationLayer *)self gamma];
  [(MLCInstanceNormalizationLayer *)self varianceEpsilon];
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
  featureChannelCount = [(MLCInstanceNormalizationLayer *)self featureChannelCount];
  [(MLCInstanceNormalizationLayer *)self varianceEpsilon];
  v9 = v8;
  [(MLCInstanceNormalizationLayer *)self momentum];
  v11 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Feature Channel Count: %lu    Variance Epsilon: %.03f<BR />Momentum: %.03f</FONT>>", v5, layerID, featureChannelCount, *&v9, v10];

  return v11;
}

- (void)linkAssociatedTensors
{
  beta = [(MLCInstanceNormalizationLayer *)self beta];
  childLayers = [beta childLayers];
  [childLayers addObject:self];

  gamma = [(MLCInstanceNormalizationLayer *)self gamma];
  childLayers2 = [gamma childLayers];
  [childLayers2 addObject:self];
}

- (void)unlinkAssociatedTensors
{
  beta = [(MLCInstanceNormalizationLayer *)self beta];
  childLayers = [beta childLayers];
  [childLayers removeObject:self];

  gamma = [(MLCInstanceNormalizationLayer *)self gamma];
  childLayers2 = [gamma childLayers];
  [childLayers2 removeObject:self];
}

- (BOOL)isValidTrainingParameters
{
  beta = [(MLCInstanceNormalizationLayer *)self beta];
  if (beta)
  {
    gamma = [(MLCInstanceNormalizationLayer *)self gamma];
    v5 = gamma != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)parametersCount
{
  betaParameter = [(MLCInstanceNormalizationLayer *)self betaParameter];

  gammaParameter = [(MLCInstanceNormalizationLayer *)self gammaParameter];

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

- (void)initWithFeatureChannelCount:(const char *)a1 mean:variance:beta:gamma:varianceEpsilon:momentum:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithFeatureChannelCount:(const char *)a1 mean:variance:beta:gamma:varianceEpsilon:momentum:.cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithFeatureChannelCount:(const char *)a1 mean:variance:beta:gamma:varianceEpsilon:momentum:.cold.3(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithFeatureChannelCount:(const char *)a1 mean:variance:beta:gamma:varianceEpsilon:momentum:.cold.4(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithFeatureChannelCount:(const char *)a1 mean:variance:beta:gamma:varianceEpsilon:momentum:.cold.5(const char *a1)
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
  OUTLINED_FUNCTION_3_0(&dword_238C1D000, v7, v8, "%@: beta tensor (%@) in InstanceNormalization uses an unsupported data type=%d", v9, v10, v11, v12, v14);

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
  OUTLINED_FUNCTION_3_0(&dword_238C1D000, v7, v8, "%@: gamma tensor (%@) in InstanceNormalization uses an unsupported data type=%d", v9, v10, v11, v12, v14);

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

@end