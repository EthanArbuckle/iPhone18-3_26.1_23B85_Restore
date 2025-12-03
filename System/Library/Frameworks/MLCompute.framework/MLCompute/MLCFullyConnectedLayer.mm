@interface MLCFullyConnectedLayer
+ (MLCFullyConnectedLayer)layerWithWeights:(MLCTensor *)weights biases:(MLCTensor *)biases descriptor:(MLCConvolutionDescriptor *)descriptor;
- (BOOL)allocateDataForOptimizer:(id)optimizer;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (BOOL)isSupportedShapeForTensorSources:(id)sources;
- (MLCFullyConnectedLayer)initWithWeights:(id)weights biases:(id)biases descriptor:(id)descriptor;
- (id)description;
- (id)resultTensorFromSources:(id)sources;
- (id)summarizedDOTDescription;
- (unint64_t)allocatedDataSizeForTraining:(BOOL)training optimizer:(id)optimizer;
- (unint64_t)parametersCount;
- (void)linkAssociatedTensors;
- (void)unlinkAssociatedTensors;
@end

@implementation MLCFullyConnectedLayer

+ (MLCFullyConnectedLayer)layerWithWeights:(MLCTensor *)weights biases:(MLCTensor *)biases descriptor:(MLCConvolutionDescriptor *)descriptor
{
  v8 = descriptor;
  v9 = biases;
  v10 = weights;
  v11 = [[self alloc] initWithWeights:v10 biases:v9 descriptor:v8];

  return v11;
}

- (MLCFullyConnectedLayer)initWithWeights:(id)weights biases:(id)biases descriptor:(id)descriptor
{
  weightsCopy = weights;
  biasesCopy = biases;
  descriptorCopy = descriptor;
  descriptor = [weightsCopy descriptor];
  shape = [descriptor shape];
  v13 = [shape objectAtIndexedSubscript:0];
  unsignedIntegerValue = [v13 unsignedIntegerValue];

  if (unsignedIntegerValue >= 2)
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCFullyConnectedLayer initWithWeights:a2 biases:? descriptor:?];
    }

    goto LABEL_11;
  }

  data = [weightsCopy data];

  if (!data)
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCFullyConnectedLayer initWithWeights:a2 biases:? descriptor:?];
    }

    goto LABEL_11;
  }

  v69 = descriptorCopy;
  if (biasesCopy)
  {
    descriptor2 = [biasesCopy descriptor];
    shape2 = [descriptor2 shape];
    v19 = [shape2 objectAtIndexedSubscript:0];
    unsignedIntegerValue2 = [v19 unsignedIntegerValue];

    if (unsignedIntegerValue2 >= 2)
    {
      v15 = +[MLCLog framework];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [MLCFullyConnectedLayer initWithWeights:a2 biases:? descriptor:?];
      }

      goto LABEL_11;
    }

    descriptor3 = [biasesCopy descriptor];
    shape3 = [descriptor3 shape];
    v26 = [shape3 objectAtIndexedSubscript:1];
    unsignedIntegerValue3 = [v26 unsignedIntegerValue];
    outputFeatureChannelCount = [descriptorCopy outputFeatureChannelCount];

    if (unsignedIntegerValue3 != outputFeatureChannelCount)
    {
      v34 = +[MLCLog framework];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [MLCFullyConnectedLayer initWithWeights:a2 biases:? descriptor:?];
      }

      v21 = 0;
      descriptorCopy = v69;
      goto LABEL_12;
    }

    descriptor4 = [biasesCopy descriptor];
    shape4 = [descriptor4 shape];
    v30 = [shape4 count];
    if (v30 >= 4)
    {
      descriptor5 = [biasesCopy descriptor];
      shape5 = [descriptor5 shape];
      v33 = [shape5 objectAtIndexedSubscript:3];
      if ([v33 unsignedIntegerValue] > 1)
      {

        descriptorCopy = v69;
LABEL_28:
        v15 = +[MLCLog framework];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [MLCFullyConnectedLayer initWithWeights:a2 biases:? descriptor:?];
        }

        goto LABEL_11;
      }

      v61 = v33;
      v63 = shape5;
      v64 = descriptor5;
    }

    v67 = v30;
    descriptor6 = [biasesCopy descriptor];
    shape6 = [descriptor6 shape];
    if ([shape6 count] < 3)
    {
      v40 = 0;
    }

    else
    {
      descriptor7 = [biasesCopy descriptor];
      v66 = descriptor4;
      shape7 = [descriptor7 shape];
      v38 = [shape7 objectAtIndexedSubscript:2];
      v39 = [v38 unsignedIntegerValue] > 1;

      v40 = v39;
      descriptor4 = v66;
    }

    descriptorCopy = v69;

    if (v67 >= 4)
    {
    }

    if (v40)
    {
      goto LABEL_28;
    }

    childLayers = [weightsCopy childLayers];
    v42 = [childLayers count];
    childLayers2 = [biasesCopy childLayers];
    v44 = [childLayers2 count];

    if (v42 != v44)
    {
      v15 = +[MLCLog framework];
      descriptorCopy = v69;
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
LABEL_11:

        v21 = 0;
LABEL_12:
        selfCopy = self;
        goto LABEL_13;
      }

LABEL_42:
      [MLCFullyConnectedLayer initWithWeights:a2 biases:? descriptor:?];
      goto LABEL_11;
    }

    childLayers3 = [weightsCopy childLayers];
    v46 = [childLayers3 count];

    if (v46)
    {
      v47 = 0;
      while (1)
      {
        childLayers4 = [weightsCopy childLayers];
        v49 = [childLayers4 objectAtIndexedSubscript:v47];
        childLayers5 = [biasesCopy childLayers];
        v51 = [childLayers5 objectAtIndexedSubscript:v47];

        if (v49 != v51)
        {
          break;
        }

        ++v47;
        childLayers6 = [weightsCopy childLayers];
        v53 = [childLayers6 count];

        if (v47 >= v53)
        {
          goto LABEL_35;
        }
      }

      v15 = +[MLCLog framework];
      descriptorCopy = v69;
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      goto LABEL_42;
    }
  }

LABEL_35:
  v73.receiver = self;
  v73.super_class = MLCFullyConnectedLayer;
  v54 = [(MLCLayer *)&v73 initWithLabel:@"FullyConnected"];
  v55 = v54;
  if (v54)
  {
    v54->_accumulatorPrecisionOption = 0;
    objc_storeStrong(&v54->_weights, weights);
    objc_storeStrong(&v55->_descriptor, descriptor);
    objc_storeStrong(&v55->_biases, biases);
    v56 = [MLCTensorParameter parameterWithTensor:weightsCopy];
    weightsParameter = v55->_weightsParameter;
    v55->_weightsParameter = v56;

    [(MLCTensor *)v55->_weights setIsLayerParameter:1];
    if (biasesCopy)
    {
      v58 = [MLCTensorParameter parameterWithTensor:biasesCopy];
      biasesParameter = v55->_biasesParameter;
      v55->_biasesParameter = v58;

      [(MLCTensor *)v55->_biases setIsLayerParameter:1];
    }

    else
    {
      v60 = v55->_biasesParameter;
      v55->_biasesParameter = 0;
    }

    v72.receiver = v55;
    v72.super_class = MLCFullyConnectedLayer;
    [(MLCLayer *)&v72 setIsUpdatable:1];
  }

  selfCopy = v55;
  v21 = selfCopy;
  descriptorCopy = v69;
LABEL_13:

  return v21;
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  weights = [(MLCFullyConnectedLayer *)self weights];
  parentLayers = [weights parentLayers];
  v14 = [parentLayers count];

  if (v14)
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCFullyConnectedLayer compileForDevice:a2 sourceTensors:self resultTensor:?];
    }

    goto LABEL_7;
  }

  biases = [(MLCFullyConnectedLayer *)self biases];
  parentLayers2 = [biases parentLayers];
  v18 = [parentLayers2 count];

  if (v18)
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCFullyConnectedLayer compileForDevice:a2 sourceTensors:self resultTensor:?];
    }

    goto LABEL_7;
  }

  v85 = a2;
  v86 = tensorsCopy;
  biases2 = [(MLCFullyConnectedLayer *)self biases];
  childLayers = [biases2 childLayers];
  v23 = [childLayers count];

  if (v23)
  {
    weights2 = [(MLCFullyConnectedLayer *)self weights];
    childLayers2 = [weights2 childLayers];
    v26 = [childLayers2 count];
    biases3 = [(MLCFullyConnectedLayer *)self biases];
    childLayers3 = [biases3 childLayers];
    v29 = [childLayers3 count];

    if (v26 != v29)
    {
      v15 = +[MLCLog framework];
      tensorsCopy = v86;
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
LABEL_7:
        v19 = 0;
        goto LABEL_8;
      }

LABEL_20:
      [MLCFullyConnectedLayer compileForDevice:v85 sourceTensors:? resultTensor:?];
      goto LABEL_7;
    }

    weights3 = [(MLCFullyConnectedLayer *)self weights];
    childLayers4 = [weights3 childLayers];
    v32 = [childLayers4 count];

    if (v32)
    {
      v33 = 0;
      while (1)
      {
        weights4 = [(MLCFullyConnectedLayer *)self weights];
        childLayers5 = [weights4 childLayers];
        v36 = [childLayers5 objectAtIndexedSubscript:v33];
        biases4 = [(MLCFullyConnectedLayer *)self biases];
        childLayers6 = [biases4 childLayers];
        v39 = [childLayers6 objectAtIndexedSubscript:v33];

        if (v36 != v39)
        {
          break;
        }

        ++v33;
        weights5 = [(MLCFullyConnectedLayer *)self weights];
        childLayers7 = [weights5 childLayers];
        v42 = [childLayers7 count];

        if (v33 >= v42)
        {
          goto LABEL_15;
        }
      }

      v15 = +[MLCLog framework];
      tensorsCopy = v86;
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }
  }

LABEL_15:
  fusedLayers = [(MLCLayer *)self fusedLayers];
  v44 = [fusedLayers count];

  if (v44)
  {
    fusedLayers2 = [(MLCLayer *)self fusedLayers];
    v46 = [fusedLayers2 objectAtIndexedSubscript:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    fusedLayers3 = [(MLCLayer *)self fusedLayers];
    computeEngine3 = [fusedLayers3 objectAtIndexedSubscript:0];
    if (isKindOfClass)
    {

      fusedLayers4 = [(MLCLayer *)self fusedLayers];
      v51 = [fusedLayers4 count];

      if (v51 < 2)
      {
        descriptor = 0;
      }

      else
      {
        fusedLayers5 = [(MLCLayer *)self fusedLayers];
        v53 = [fusedLayers5 objectAtIndexedSubscript:1];
        descriptor = [v53 descriptor];
      }

      computeEngine = [deviceCopy computeEngine];
      descriptor2 = [(MLCFullyConnectedLayer *)self descriptor];
      mean = [computeEngine3 mean];
      variance = [computeEngine3 variance];
      beta = [computeEngine3 beta];
      gamma = [computeEngine3 gamma];
      [computeEngine3 varianceEpsilon];
      v63 = v62;
      [computeEngine3 momentum];
      v65 = v64;
      weights6 = [(MLCFullyConnectedLayer *)self weights];
      biases5 = [(MLCFullyConnectedLayer *)self biases];
      descriptor3 = computeEngine;
      LODWORD(v67) = v63;
      LODWORD(v68) = v65;
      computeEngine2 = descriptor;
      v15 = [computeEngine fusedFullyConnectedBatchNormalizationAndNeuronLayerWithDescriptor:descriptor2 mean:mean variance:variance beta:beta gamma:gamma varianceEpsilon:descriptor momentum:v67 neuronDescriptor:v68 weights:weights6 biasTerms:biases5];

      weights7 = descriptor2;
    }

    else
    {
      objc_opt_class();
      v57 = objc_opt_isKindOfClass();

      fusedLayers6 = [(MLCLayer *)self fusedLayers];
      computeEngine3 = [fusedLayers6 objectAtIndexedSubscript:0];

      computeEngine2 = [deviceCopy computeEngine];
      if (v57)
      {
        descriptor3 = [(MLCFullyConnectedLayer *)self descriptor];
        weights7 = [(MLCFullyConnectedLayer *)self weights];
        biases6 = [(MLCFullyConnectedLayer *)self biases];
        v15 = [computeEngine2 fusedFullyConnectedAndSoftmaxLayerWithDescriptor:descriptor3 weights:weights7 biasTerms:biases6 softmaxOp:{objc_msgSend(computeEngine3, "operation")}];
      }

      else
      {
        descriptor3 = [computeEngine3 descriptor];
        weights7 = [(MLCFullyConnectedLayer *)self descriptor];
        biases6 = [(MLCFullyConnectedLayer *)self weights];
        biases7 = [(MLCFullyConnectedLayer *)self biases];
        v15 = [computeEngine2 fusedFullyConnectedAndNeuronLayerWithDescriptor:descriptor3 convolutionDescriptor:weights7 weights:biases6 biasTerms:biases7];
      }
    }
  }

  else
  {
    computeEngine3 = [deviceCopy computeEngine];
    computeEngine2 = [(MLCFullyConnectedLayer *)self descriptor];
    descriptor3 = [(MLCFullyConnectedLayer *)self weights];
    weights7 = [(MLCFullyConnectedLayer *)self biases];
    v15 = [computeEngine3 fullyConnectedLayerWithDescriptor:computeEngine2 weights:descriptor3 biasTerms:weights7];
  }

  if (!v15 || ![v15 count])
  {
    v78 = +[MLCLog framework];
    tensorsCopy = v86;
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      [MLCScatterLayer compileForDevice:v85 sourceTensors:? resultTensor:?];
    }

    goto LABEL_7;
  }

  computeEngine4 = [deviceCopy computeEngine];
  tensorsCopy = v86;
  v19 = [computeEngine4 compileLayerDeviceOps:v15 sourceTensors:v86 resultTensor:tensorCopy];

  v87.receiver = self;
  v87.super_class = MLCFullyConnectedLayer;
  [(MLCLayer *)&v87 bindDevice:deviceCopy deviceOps:v15];
  fusedLayers7 = [(MLCLayer *)self fusedLayers];
  v72 = [fusedLayers7 count];

  if (v72)
  {
    v73 = 0;
    do
    {
      fusedLayers8 = [(MLCLayer *)self fusedLayers];
      v75 = [fusedLayers8 objectAtIndexedSubscript:v73];
      [v75 bindDevice:deviceCopy deviceOps:v15];

      ++v73;
      fusedLayers9 = [(MLCLayer *)self fusedLayers];
      v77 = [fusedLayers9 count];
    }

    while (v73 < v77);
  }

LABEL_8:

  return v19;
}

- (BOOL)allocateDataForOptimizer:(id)optimizer
{
  optimizerCopy = optimizer;
  weightsParameter = [(MLCFullyConnectedLayer *)self weightsParameter];
  device = [(MLCLayer *)self device];
  [weightsParameter allocateDataForOptimizer:optimizerCopy device:device isVector:1];

  biases = [(MLCFullyConnectedLayer *)self biases];

  if (biases)
  {
    biasesParameter = [(MLCFullyConnectedLayer *)self biasesParameter];
    device2 = [(MLCLayer *)self device];
    [biasesParameter allocateDataForOptimizer:optimizerCopy device:device2 isVector:1];
  }

  device3 = [(MLCLayer *)self device];
  computeEngine = [device3 computeEngine];
  deviceOps = [(MLCLayer *)self deviceOps];
  weights = [(MLCFullyConnectedLayer *)self weights];
  biases2 = [(MLCFullyConnectedLayer *)self biases];
  [computeEngine setConvolutionLayerOptimizerDataForDeviceOps:deviceOps weights:weights bias:biases2];

  return 1;
}

- (unint64_t)allocatedDataSizeForTraining:(BOOL)training optimizer:(id)optimizer
{
  trainingCopy = training;
  optimizerCopy = optimizer;
  weights = [(MLCFullyConnectedLayer *)self weights];
  descriptor = [weights descriptor];
  tensorAllocationSizeInBytes = [descriptor tensorAllocationSizeInBytes];
  biases = [(MLCFullyConnectedLayer *)self biases];
  descriptor2 = [biases descriptor];
  v12 = [descriptor2 tensorAllocationSizeInBytes] + tensorAllocationSizeInBytes;

  if (trainingCopy)
  {
    v12 *= [optimizerCopy numOptimizerDataBuffers] + 2;
  }

  return v12;
}

- (id)resultTensorFromSources:(id)sources
{
  sourcesCopy = sources;
  v5 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor = [v5 descriptor];
  shape = [descriptor shape];
  v8 = [shape mutableCopy];

  v9 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor2 = [v9 descriptor];
  shape2 = [descriptor2 shape];
  v12 = [shape2 count];

  if (v12 == 4)
  {
    v13 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor3 = [v13 descriptor];
    shape3 = [descriptor3 shape];
    v16 = [shape3 objectAtIndexedSubscript:3];
    if ([v16 unsignedIntegerValue] == 1)
    {
      v17 = [sourcesCopy objectAtIndexedSubscript:0];
      descriptor4 = [v17 descriptor];
      [descriptor4 shape];
      v19 = v36 = self;
      [v19 objectAtIndexedSubscript:2];
      v20 = v35 = v13;
      unsignedIntegerValue = [v20 unsignedIntegerValue];

      self = v36;
      if (unsignedIntegerValue == 1)
      {
        v21 = MEMORY[0x277CCABB0];
        descriptor5 = [(MLCFullyConnectedLayer *)v36 descriptor];
        v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(descriptor5, "outputFeatureChannelCount")}];
        v24 = v8;
        v25 = v23;
        v26 = 1;
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v27 = MEMORY[0x277CCABB0];
  descriptor5 = [(MLCFullyConnectedLayer *)self descriptor];
  v23 = [v27 numberWithUnsignedInteger:{objc_msgSend(descriptor5, "outputFeatureChannelCount")}];
  v26 = v12 - 1;
  v24 = v8;
  v25 = v23;
LABEL_7:
  [v24 setObject:v25 atIndexedSubscript:v26];

  v28 = [v8 copy];
  v29 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor6 = [v29 descriptor];
  v31 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v28, [descriptor6 dataType]);

  v32 = [MLCTensor tensorWithDescriptor:v31];

  return v32;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  accumulatorPrecisionOption = [(MLCFullyConnectedLayer *)self accumulatorPrecisionOption];
  weights = [(MLCFullyConnectedLayer *)self weights];
  biases = [(MLCFullyConnectedLayer *)self biases];
  descriptor = [(MLCFullyConnectedLayer *)self descriptor];
  conditionalTreeNode = [(MLCLayer *)self conditionalTreeNode];
  resultTensors = [(MLCLayer *)self resultTensors];
  v12 = [v3 stringWithFormat:@"%@: { accumulatorPrecisionOption=%d : weights=%@ : biasTerms=%@ : descriptor=%@ : conditionalTreeNode=%@ : resultTensor=%@ }", v5, accumulatorPrecisionOption, weights, biases, descriptor, conditionalTreeNode, resultTensors];

  return v12;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  layerID = [(MLCLayer *)self layerID];
  descriptor = [(MLCFullyConnectedLayer *)self descriptor];
  inputFeatureChannelCount = [descriptor inputFeatureChannelCount];
  descriptor2 = [(MLCFullyConnectedLayer *)self descriptor];
  v10 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Input Feature Channel Count: %lu<BR />Output Feature Channel Count: %lu<BR /></FONT>>", v5, layerID, inputFeatureChannelCount, objc_msgSend(descriptor2, "outputFeatureChannelCount")];

  return v10;
}

- (void)linkAssociatedTensors
{
  weights = [(MLCFullyConnectedLayer *)self weights];
  childLayers = [weights childLayers];
  [childLayers addObject:self];

  biases = [(MLCFullyConnectedLayer *)self biases];

  if (biases)
  {
    biases2 = [(MLCFullyConnectedLayer *)self biases];
    childLayers2 = [biases2 childLayers];
    [childLayers2 addObject:self];
  }
}

- (void)unlinkAssociatedTensors
{
  weights = [(MLCFullyConnectedLayer *)self weights];
  childLayers = [weights childLayers];
  [childLayers removeObject:self];

  biases = [(MLCFullyConnectedLayer *)self biases];

  if (biases)
  {
    biases2 = [(MLCFullyConnectedLayer *)self biases];
    childLayers2 = [biases2 childLayers];
    [childLayers2 removeObject:self];
  }
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
  biasesParameter = [(MLCFullyConnectedLayer *)self biasesParameter];

  if (biasesParameter)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)initWithWeights:(const char *)a1 biases:descriptor:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithWeights:(const char *)a1 biases:descriptor:.cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithWeights:(const char *)a1 biases:descriptor:.cold.4(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithWeights:(const char *)a1 biases:descriptor:.cold.5(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithWeights:(const char *)a1 biases:descriptor:.cold.6(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithWeights:(const char *)a1 biases:descriptor:.cold.7(const char *a1)
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
  v4 = [a2 weights];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:(void *)a2 resultTensor:.cold.2(const char *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v4 = [a2 biases];
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.3(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end