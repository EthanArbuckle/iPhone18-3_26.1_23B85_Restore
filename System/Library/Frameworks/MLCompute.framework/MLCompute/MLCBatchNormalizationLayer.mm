@interface MLCBatchNormalizationLayer
+ (MLCBatchNormalizationLayer)layerWithFeatureChannelCount:(NSUInteger)featureChannelCount mean:(MLCTensor *)mean variance:(MLCTensor *)variance beta:(MLCTensor *)beta gamma:(MLCTensor *)gamma varianceEpsilon:(float)varianceEpsilon momentum:(float)momentum;
- (BOOL)allocateDataForOptimizer:(id)optimizer;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (BOOL)isSupportedShapeForTensorSources:(id)sources;
- (BOOL)isValidTrainingParameters;
- (MLCBatchNormalizationLayer)initWithFeatureChannelCount:(unint64_t)count mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum;
- (id)description;
- (id)summarizedDOTDescription;
- (unint64_t)allocatedDataSizeForTraining:(BOOL)training optimizer:(id)optimizer;
- (unint64_t)parametersCount;
- (void)linkAssociatedTensors;
- (void)unlinkAssociatedTensors;
@end

@implementation MLCBatchNormalizationLayer

+ (MLCBatchNormalizationLayer)layerWithFeatureChannelCount:(NSUInteger)featureChannelCount mean:(MLCTensor *)mean variance:(MLCTensor *)variance beta:(MLCTensor *)beta gamma:(MLCTensor *)gamma varianceEpsilon:(float)varianceEpsilon momentum:(float)momentum
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

- (MLCBatchNormalizationLayer)initWithFeatureChannelCount:(unint64_t)count mean:(id)mean variance:(id)variance beta:(id)beta gamma:(id)gamma varianceEpsilon:(float)epsilon momentum:(float)momentum
{
  meanCopy = mean;
  obj = variance;
  varianceCopy = variance;
  betaCopy = beta;
  gammaCopy = gamma;
  descriptor = [meanCopy descriptor];
  shape = [descriptor shape];
  v21 = [shape objectAtIndexedSubscript:0];
  if ([v21 unsignedIntegerValue] > 1)
  {
    goto LABEL_4;
  }

  betaCopy2 = beta;
  gammaCopy2 = gamma;
  selfCopy = self;
  descriptor2 = [meanCopy descriptor];
  shape2 = [descriptor2 shape];
  v24 = [shape2 objectAtIndexedSubscript:3];
  if ([v24 unsignedIntegerValue] > 1)
  {

    self = selfCopy;
LABEL_4:

    goto LABEL_5;
  }

  [meanCopy descriptor];
  v28 = v75 = meanCopy;
  [v28 shape];
  v29 = v74 = varianceCopy;
  [v29 objectAtIndexedSubscript:2];
  v30 = v73 = betaCopy;
  v76 = gammaCopy;
  unsignedIntegerValue = [v30 unsignedIntegerValue];

  betaCopy = v73;
  varianceCopy = v74;

  meanCopy = v75;
  v32 = unsignedIntegerValue > 1;
  gammaCopy = v76;
  self = selfCopy;
  if (v32)
  {
LABEL_5:
    v25 = +[MLCLog framework];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [MLCBatchNormalizationLayer initWithFeatureChannelCount:a2 mean:? variance:? beta:? gamma:? varianceEpsilon:? momentum:?];
    }

LABEL_7:

    selfCopy2 = 0;
    goto LABEL_8;
  }

  descriptor3 = [v74 descriptor];
  shape3 = [descriptor3 shape];
  v35 = [shape3 objectAtIndexedSubscript:0];
  if ([v35 unsignedIntegerValue] > 1)
  {
    goto LABEL_13;
  }

  descriptor4 = [v74 descriptor];
  shape4 = [descriptor4 shape];
  v38 = [shape4 objectAtIndexedSubscript:3];
  if ([v38 unsignedIntegerValue] > 1)
  {

    self = selfCopy;
LABEL_13:

    goto LABEL_14;
  }

  descriptor5 = [v74 descriptor];
  shape5 = [descriptor5 shape];
  v41 = [shape5 objectAtIndexedSubscript:2];
  unsignedIntegerValue2 = [v41 unsignedIntegerValue];

  varianceCopy = v74;
  meanCopy = v75;

  gammaCopy = v76;
  v32 = unsignedIntegerValue2 > 1;
  betaCopy = v73;
  self = selfCopy;
  if (v32)
  {
LABEL_14:
    v25 = +[MLCLog framework];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [MLCBatchNormalizationLayer initWithFeatureChannelCount:a2 mean:? variance:? beta:? gamma:? varianceEpsilon:? momentum:?];
    }

    goto LABEL_7;
  }

  if (v73)
  {
    descriptor6 = [v73 descriptor];
    shape6 = [descriptor6 shape];
    v45 = [shape6 objectAtIndexedSubscript:0];
    if ([v45 unsignedIntegerValue] > 1)
    {
LABEL_21:

      goto LABEL_22;
    }

    descriptor7 = [v73 descriptor];
    shape7 = [descriptor7 shape];
    v48 = [shape7 objectAtIndexedSubscript:3];
    if ([v48 unsignedIntegerValue] > 1)
    {

      self = selfCopy;
      goto LABEL_21;
    }

    descriptor8 = [v73 descriptor];
    shape8 = [descriptor8 shape];
    v51 = [shape8 objectAtIndexedSubscript:2];
    unsignedIntegerValue3 = [v51 unsignedIntegerValue];

    varianceCopy = v74;
    meanCopy = v75;

    gammaCopy = v76;
    v32 = unsignedIntegerValue3 > 1;
    betaCopy = v73;
    self = selfCopy;
    if (v32)
    {
LABEL_22:
      v25 = +[MLCLog framework];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [MLCBatchNormalizationLayer initWithFeatureChannelCount:a2 mean:? variance:? beta:? gamma:? varianceEpsilon:? momentum:?];
      }

      goto LABEL_7;
    }
  }

  if (gammaCopy)
  {
    descriptor9 = [gammaCopy descriptor];
    shape9 = [descriptor9 shape];
    v55 = [shape9 objectAtIndexedSubscript:0];
    if ([v55 unsignedIntegerValue] > 1)
    {
LABEL_29:

      goto LABEL_30;
    }

    descriptor10 = [gammaCopy descriptor];
    shape10 = [descriptor10 shape];
    v58 = [shape10 objectAtIndexedSubscript:3];
    if ([v58 unsignedIntegerValue] > 1)
    {

      self = selfCopy;
      goto LABEL_29;
    }

    descriptor11 = [gammaCopy descriptor];
    shape11 = [descriptor11 shape];
    v61 = [shape11 objectAtIndexedSubscript:2];
    unsignedIntegerValue4 = [v61 unsignedIntegerValue];

    varianceCopy = v74;
    meanCopy = v75;

    gammaCopy = v76;
    v32 = unsignedIntegerValue4 > 1;
    betaCopy = v73;
    self = selfCopy;
    if (v32)
    {
LABEL_30:
      v25 = +[MLCLog framework];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [MLCBatchNormalizationLayer initWithFeatureChannelCount:a2 mean:? variance:? beta:? gamma:? varianceEpsilon:? momentum:?];
      }

      goto LABEL_7;
    }
  }

  if ((betaCopy == 0) != (gammaCopy == 0))
  {
    v25 = +[MLCLog framework];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [MLCBatchNormalizationLayer initWithFeatureChannelCount:a2 mean:? variance:? beta:? gamma:? varianceEpsilon:? momentum:?];
    }

    goto LABEL_7;
  }

  v83.receiver = self;
  v83.super_class = MLCBatchNormalizationLayer;
  v63 = [(MLCLayer *)&v83 initWithLabel:@"BatchNorm"];
  v64 = v63;
  if (v63)
  {
    v63->_featureChannelCount = count;
    objc_storeStrong(&v63->_mean, mean);
    objc_storeStrong(&v64->_variance, obj);
    objc_storeStrong(&v64->_beta, betaCopy2);
    objc_storeStrong(&v64->_gamma, gammaCopy2);
    v64->_varianceEpsilon = epsilon;
    v64->_momentum = momentum;
    [(MLCTensor *)v64->_mean setIsLayerParameter:1];
    [(MLCTensor *)v64->_variance setIsLayerParameter:1];
    if (betaCopy)
    {
      v65 = [MLCTensorParameter parameterWithTensor:betaCopy];
      betaParameter = v64->_betaParameter;
      v64->_betaParameter = v65;

      [(MLCTensor *)v64->_beta setIsLayerParameter:1];
    }

    else
    {
      v67 = v64->_betaParameter;
      v64->_betaParameter = 0;
    }

    if (v76)
    {
      v68 = [MLCTensorParameter parameterWithTensor:?];
      gammaParameter = v64->_gammaParameter;
      v64->_gammaParameter = v68;

      [(MLCTensor *)v64->_gamma setIsLayerParameter:1];
    }

    else
    {
      v70 = v64->_gammaParameter;
      v64->_gammaParameter = 0;
    }

    v82.receiver = v64;
    v82.super_class = MLCBatchNormalizationLayer;
    [(MLCLayer *)&v82 setIsUpdatable:1];
  }

  self = v64;
  selfCopy2 = self;
  gammaCopy = v76;
LABEL_8:

  return selfCopy2;
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  mean = [(MLCBatchNormalizationLayer *)self mean];
  parentLayers = [mean parentLayers];
  v13 = [parentLayers count];

  if (!v13)
  {
    v14 = [&unk_284BA5FD8 mutableCopy];
    if ([deviceCopy type] == 3)
    {
      [v14 addObject:&unk_284BA57B0];
    }

    mean2 = [(MLCBatchNormalizationLayer *)self mean];
    v17 = [mean2 isTensorDataTypeInListOfDataTypes:v14];

    if ((v17 & 1) == 0)
    {
      v21 = +[MLCLog framework];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [MLCBatchNormalizationLayer compileForDevice:sourceTensors:resultTensor:];
      }

      goto LABEL_13;
    }

    variance = [(MLCBatchNormalizationLayer *)self variance];
    parentLayers2 = [variance parentLayers];
    v20 = [parentLayers2 count];

    if (v20)
    {
      v21 = +[MLCLog framework];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [MLCBatchNormalizationLayer compileForDevice:sourceTensors:resultTensor:];
      }
    }

    else
    {
      variance2 = [(MLCBatchNormalizationLayer *)self variance];
      v24 = [variance2 isTensorDataTypeInListOfDataTypes:v14];

      if ((v24 & 1) == 0)
      {
        v21 = +[MLCLog framework];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [MLCBatchNormalizationLayer compileForDevice:sourceTensors:resultTensor:];
        }

        goto LABEL_13;
      }

      beta = [(MLCBatchNormalizationLayer *)self beta];

      if (!beta)
      {
        goto LABEL_24;
      }

      beta2 = [(MLCBatchNormalizationLayer *)self beta];
      v27 = [beta2 isTensorDataTypeInListOfDataTypes:v14];

      if ((v27 & 1) == 0)
      {
        v21 = +[MLCLog framework];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [MLCBatchNormalizationLayer compileForDevice:sourceTensors:resultTensor:];
        }

        goto LABEL_13;
      }

      beta3 = [(MLCBatchNormalizationLayer *)self beta];
      parentLayers3 = [beta3 parentLayers];
      v30 = [parentLayers3 count];

      if (v30)
      {
        v21 = +[MLCLog framework];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [MLCBatchNormalizationLayer compileForDevice:sourceTensors:resultTensor:];
        }
      }

      else
      {
LABEL_24:
        gamma = [(MLCBatchNormalizationLayer *)self gamma];

        if (!gamma)
        {
          goto LABEL_31;
        }

        gamma2 = [(MLCBatchNormalizationLayer *)self gamma];
        v33 = [gamma2 isTensorDataTypeInListOfDataTypes:v14];

        if ((v33 & 1) == 0)
        {
          v21 = +[MLCLog framework];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [MLCBatchNormalizationLayer compileForDevice:sourceTensors:resultTensor:];
          }

          goto LABEL_13;
        }

        gamma3 = [(MLCBatchNormalizationLayer *)self gamma];
        parentLayers4 = [gamma3 parentLayers];
        v36 = [parentLayers4 count];

        if (v36)
        {
          v21 = +[MLCLog framework];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [MLCBatchNormalizationLayer compileForDevice:sourceTensors:resultTensor:];
          }
        }

        else
        {
LABEL_31:
          fusedLayers = [(MLCLayer *)self fusedLayers];
          v38 = [fusedLayers count];

          if (v38)
          {
            fusedLayers2 = [(MLCLayer *)self fusedLayers];
            v64 = [fusedLayers2 objectAtIndexedSubscript:0];

            computeEngine = [deviceCopy computeEngine];
            descriptor = [v64 descriptor];
            featureChannelCount = [(MLCBatchNormalizationLayer *)self featureChannelCount];
            mean3 = [(MLCBatchNormalizationLayer *)self mean];
            variance3 = [(MLCBatchNormalizationLayer *)self variance];
            beta4 = [(MLCBatchNormalizationLayer *)self beta];
            gamma4 = [(MLCBatchNormalizationLayer *)self gamma];
            [(MLCBatchNormalizationLayer *)self varianceEpsilon];
            v44 = v43;
            [(MLCBatchNormalizationLayer *)self momentum];
            LODWORD(v46) = v45;
            v47 = featureChannelCount;
            v68 = mean3;
            v48 = mean3;
            v49 = variance3;
            LODWORD(v50) = v44;
            v21 = [computeEngine fusedBatchNormalizationAndNeuronLayerWithDescriptor:descriptor numOfFeatureChannels:v47 mean:v48 variance:variance3 beta:beta4 gamma:gamma4 varianceEpsilon:v50 momentum:v46];

            computeEngine2 = v64;
          }

          else
          {
            computeEngine2 = [deviceCopy computeEngine];
            featureChannelCount2 = [(MLCBatchNormalizationLayer *)self featureChannelCount];
            computeEngine = [(MLCBatchNormalizationLayer *)self mean];
            variance4 = [(MLCBatchNormalizationLayer *)self variance];
            beta5 = [(MLCBatchNormalizationLayer *)self beta];
            gamma5 = [(MLCBatchNormalizationLayer *)self gamma];
            [(MLCBatchNormalizationLayer *)self varianceEpsilon];
            v55 = v54;
            [(MLCBatchNormalizationLayer *)self momentum];
            LODWORD(v57) = v56;
            v58 = featureChannelCount2;
            v68 = beta5;
            descriptor = variance4;
            v59 = beta5;
            v49 = gamma5;
            LODWORD(v60) = v55;
            v21 = [computeEngine2 batchNormalizationLayerWithChannelCount:v58 mean:computeEngine variance:variance4 beta:v59 gamma:gamma5 varianceEpsilon:v60 momentum:v57];
          }

          if (v21 && [v21 count])
          {
            computeEngine3 = [deviceCopy computeEngine];
            v15 = [computeEngine3 compileLayerDeviceOps:v21 sourceTensors:tensorsCopy resultTensor:tensorCopy];

            v71.receiver = self;
            v71.super_class = MLCBatchNormalizationLayer;
            [(MLCLayer *)&v71 bindDevice:deviceCopy deviceOps:v21];
            goto LABEL_14;
          }

          v62 = +[MLCLog framework];
          if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
          {
            [MLCBatchNormalizationLayer compileForDevice:sourceTensors:resultTensor:];
          }
        }
      }
    }

LABEL_13:
    v15 = 0;
LABEL_14:

    goto LABEL_15;
  }

  v14 = +[MLCLog framework];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [MLCBatchNormalizationLayer compileForDevice:sourceTensors:resultTensor:];
  }

  v15 = 0;
LABEL_15:

  return v15;
}

- (BOOL)allocateDataForOptimizer:(id)optimizer
{
  optimizerCopy = optimizer;
  beta = [(MLCBatchNormalizationLayer *)self beta];

  if (beta)
  {
    betaParameter = [(MLCBatchNormalizationLayer *)self betaParameter];
    device = [(MLCLayer *)self device];
    [betaParameter allocateDataForOptimizer:optimizerCopy device:device isVector:1];
  }

  gamma = [(MLCBatchNormalizationLayer *)self gamma];

  if (gamma)
  {
    gammaParameter = [(MLCBatchNormalizationLayer *)self gammaParameter];
    device2 = [(MLCLayer *)self device];
    [gammaParameter allocateDataForOptimizer:optimizerCopy device:device2 isVector:1];
  }

  device3 = [(MLCLayer *)self device];
  computeEngine = [device3 computeEngine];
  deviceOps = [(MLCLayer *)self deviceOps];
  beta2 = [(MLCBatchNormalizationLayer *)self beta];
  gamma2 = [(MLCBatchNormalizationLayer *)self gamma];
  [computeEngine setNormalizationLayerOptimizerDataForDeviceOps:deviceOps beta:beta2 gamma:gamma2];

  return 1;
}

- (unint64_t)allocatedDataSizeForTraining:(BOOL)training optimizer:(id)optimizer
{
  trainingCopy = training;
  optimizerCopy = optimizer;
  mean = [(MLCBatchNormalizationLayer *)self mean];
  descriptor = [mean descriptor];
  tensorAllocationSizeInBytes = [descriptor tensorAllocationSizeInBytes];
  variance = [(MLCBatchNormalizationLayer *)self variance];
  descriptor2 = [variance descriptor];
  tensorAllocationSizeInBytes2 = [descriptor2 tensorAllocationSizeInBytes];
  beta = [(MLCBatchNormalizationLayer *)self beta];
  descriptor3 = [beta descriptor];
  tensorAllocationSizeInBytes3 = [descriptor3 tensorAllocationSizeInBytes];
  gamma = [(MLCBatchNormalizationLayer *)self gamma];
  descriptor4 = [gamma descriptor];
  tensorAllocationSizeInBytes4 = [descriptor4 tensorAllocationSizeInBytes];

  mean2 = [(MLCBatchNormalizationLayer *)self mean];
  descriptor5 = [mean2 descriptor];
  tensorAllocationSizeInBytes5 = [descriptor5 tensorAllocationSizeInBytes];
  variance2 = [(MLCBatchNormalizationLayer *)self variance];
  descriptor6 = [variance2 descriptor];
  v19 = tensorAllocationSizeInBytes2 + tensorAllocationSizeInBytes + tensorAllocationSizeInBytes3 + tensorAllocationSizeInBytes4 + tensorAllocationSizeInBytes5 + [descriptor6 tensorAllocationSizeInBytes];

  if (trainingCopy)
  {
    gamma2 = [(MLCBatchNormalizationLayer *)self gamma];
    descriptor7 = [gamma2 descriptor];
    tensorAllocationSizeInBytes6 = [descriptor7 tensorAllocationSizeInBytes];
    beta2 = [(MLCBatchNormalizationLayer *)self beta];
    descriptor8 = [beta2 descriptor];
    v25 = [descriptor8 tensorAllocationSizeInBytes] + tensorAllocationSizeInBytes6;
    v19 += v25 * [optimizerCopy numOptimizerDataBuffers];
  }

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  mean = [(MLCBatchNormalizationLayer *)self mean];
  variance = [(MLCBatchNormalizationLayer *)self variance];
  beta = [(MLCBatchNormalizationLayer *)self beta];
  gamma = [(MLCBatchNormalizationLayer *)self gamma];
  [(MLCBatchNormalizationLayer *)self varianceEpsilon];
  v11 = v10;
  conditionalTreeNode = [(MLCLayer *)self conditionalTreeNode];
  resultTensors = [(MLCLayer *)self resultTensors];
  v14 = [v3 stringWithFormat:@"%@: { mean=%@ : variance=%@ : beta=%@ : gamma=%@ : varianceEpsilon=%f : conditionalTreeNode=%@ : resultTensor=%@ }", v5, mean, variance, beta, gamma, *&v11, conditionalTreeNode, resultTensors];

  return v14;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  layerID = [(MLCLayer *)self layerID];
  featureChannelCount = [(MLCBatchNormalizationLayer *)self featureChannelCount];
  [(MLCBatchNormalizationLayer *)self varianceEpsilon];
  v9 = v8;
  [(MLCBatchNormalizationLayer *)self momentum];
  v11 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Feature Channel Count: %lu    Variance Epsilon: %.03f<BR />Momentum: %.03f</FONT>>", v5, layerID, featureChannelCount, *&v9, v10];

  return v11;
}

- (void)linkAssociatedTensors
{
  mean = [(MLCBatchNormalizationLayer *)self mean];
  childLayers = [mean childLayers];
  [childLayers addObject:self];

  variance = [(MLCBatchNormalizationLayer *)self variance];
  childLayers2 = [variance childLayers];
  [childLayers2 addObject:self];

  beta = [(MLCBatchNormalizationLayer *)self beta];
  childLayers3 = [beta childLayers];
  [childLayers3 addObject:self];

  gamma = [(MLCBatchNormalizationLayer *)self gamma];
  childLayers4 = [gamma childLayers];
  [childLayers4 addObject:self];
}

- (void)unlinkAssociatedTensors
{
  mean = [(MLCBatchNormalizationLayer *)self mean];
  childLayers = [mean childLayers];
  [childLayers removeObject:self];

  variance = [(MLCBatchNormalizationLayer *)self variance];
  childLayers2 = [variance childLayers];
  [childLayers2 removeObject:self];

  beta = [(MLCBatchNormalizationLayer *)self beta];
  childLayers3 = [beta childLayers];
  [childLayers3 removeObject:self];

  gamma = [(MLCBatchNormalizationLayer *)self gamma];
  childLayers4 = [gamma childLayers];
  [childLayers4 removeObject:self];
}

- (BOOL)isValidTrainingParameters
{
  beta = [(MLCBatchNormalizationLayer *)self beta];
  if (beta)
  {
    gamma = [(MLCBatchNormalizationLayer *)self gamma];
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
  betaParameter = [(MLCBatchNormalizationLayer *)self betaParameter];

  gammaParameter = [(MLCBatchNormalizationLayer *)self gammaParameter];

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

- (void)compileForDevice:sourceTensors:resultTensor:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v9 = *MEMORY[0x277D85DE8];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_9() mean];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:sourceTensors:resultTensor:.cold.2()
{
  OUTLINED_FUNCTION_8_0();
  v13 = *MEMORY[0x277D85DE8];
  NSStringFromSelector(v2);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_6_0() mean];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_7_0() mean];
  v4 = [v3 descriptor];
  [v4 dataType];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0(&dword_238C1D000, v5, v6, "%@: mean tensor (%@) in BatchNormalization uses an unsupported data type=%d", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:sourceTensors:resultTensor:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  v9 = *MEMORY[0x277D85DE8];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_9() variance];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:sourceTensors:resultTensor:.cold.4()
{
  OUTLINED_FUNCTION_8_0();
  v13 = *MEMORY[0x277D85DE8];
  NSStringFromSelector(v2);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_6_0() variance];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_7_0() variance];
  v4 = [v3 descriptor];
  [v4 dataType];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0(&dword_238C1D000, v5, v6, "%@: variance tensor (%@) in BatchNormalization uses an unsupported data type=%d", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:sourceTensors:resultTensor:.cold.5()
{
  OUTLINED_FUNCTION_8_0();
  v13 = *MEMORY[0x277D85DE8];
  NSStringFromSelector(v2);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_6_0() beta];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_7_0() beta];
  v4 = [v3 descriptor];
  [v4 dataType];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0(&dword_238C1D000, v5, v6, "%@: beta tensor (%@) in BatchNormalization uses an unsupported data type=%d", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:sourceTensors:resultTensor:.cold.6()
{
  OUTLINED_FUNCTION_5_0();
  v9 = *MEMORY[0x277D85DE8];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_9() beta];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:sourceTensors:resultTensor:.cold.7()
{
  OUTLINED_FUNCTION_8_0();
  v13 = *MEMORY[0x277D85DE8];
  NSStringFromSelector(v2);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_6_0() gamma];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_7_0() gamma];
  v4 = [v3 descriptor];
  [v4 dataType];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3_0(&dword_238C1D000, v5, v6, "%@: gamma tensor (%@) in BatchNormalization uses an unsupported data type=%d", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:sourceTensors:resultTensor:.cold.8()
{
  OUTLINED_FUNCTION_5_0();
  v9 = *MEMORY[0x277D85DE8];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_9() gamma];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:sourceTensors:resultTensor:.cold.9()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end