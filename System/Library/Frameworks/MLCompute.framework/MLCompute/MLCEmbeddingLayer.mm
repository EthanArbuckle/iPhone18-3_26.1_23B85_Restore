@interface MLCEmbeddingLayer
+ (MLCEmbeddingLayer)layerWithDescriptor:(MLCEmbeddingDescriptor *)descriptor weights:(MLCTensor *)weights;
- (BOOL)allocateDataForOptimizer:(id)optimizer;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (MLCEmbeddingLayer)initWithDescriptor:(id)descriptor weight:(id)weight;
- (id)description;
- (id)resultTensorFromSources:(id)sources;
- (id)summarizedDOTDescription;
- (unint64_t)allocatedDataSizeForTraining:(BOOL)training optimizer:(id)optimizer;
- (void)allocateGradientsForParameters;
- (void)linkAssociatedTensors;
- (void)unlinkAssociatedTensors;
@end

@implementation MLCEmbeddingLayer

+ (MLCEmbeddingLayer)layerWithDescriptor:(MLCEmbeddingDescriptor *)descriptor weights:(MLCTensor *)weights
{
  v6 = weights;
  v7 = descriptor;
  v8 = [[self alloc] initWithDescriptor:v7 weight:v6];

  return v8;
}

- (MLCEmbeddingLayer)initWithDescriptor:(id)descriptor weight:(id)weight
{
  descriptorCopy = descriptor;
  weightCopy = weight;
  paddingIndex = [descriptorCopy paddingIndex];

  if (paddingIndex)
  {
    descriptor = [weightCopy descriptor];
    stride = [descriptor stride];
    descriptor2 = [weightCopy descriptor];
    v13 = [stride objectAtIndexedSubscript:{objc_msgSend(descriptor2, "dimensionCount") - 1}];
    unsignedIntegerValue = [v13 unsignedIntegerValue];

    paddingIndex2 = [descriptorCopy paddingIndex];
    unsignedIntegerValue2 = [paddingIndex2 unsignedIntegerValue];
    embeddingDimension = [descriptorCopy embeddingDimension];
    v18 = [embeddingDimension unsignedIntegerValue] * unsignedIntegerValue2;

    data = [weightCopy data];
    v20 = ([data bytes] + 4 * v18);
    embeddingDimension2 = [descriptorCopy embeddingDimension];
    bzero(v20, [embeddingDimension2 unsignedIntegerValue] * unsignedIntegerValue);
  }

  v28.receiver = self;
  v28.super_class = MLCEmbeddingLayer;
  v22 = [(MLCLayer *)&v28 initWithLabel:@"Embedding"];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_descriptor, descriptor);
    objc_storeStrong(&v23->_weights, weight);
    v24 = [MLCTensorParameter parameterWithTensor:weightCopy];
    weightsParameter = v23->_weightsParameter;
    v23->_weightsParameter = v24;

    [(MLCTensor *)v23->_weights setIsLayerParameter:1];
    v27.receiver = v23;
    v27.super_class = MLCEmbeddingLayer;
    [(MLCLayer *)&v27 setIsUpdatable:1];
  }

  return v23;
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  weights = [(MLCEmbeddingLayer *)self weights];
  descriptor = [weights descriptor];
  shape = [descriptor shape];
  descriptor2 = [(MLCTensor *)self->_weights descriptor];
  v72 = shape;
  v13 = [shape objectAtIndexedSubscript:{objc_msgSend(descriptor2, "dimensionCount") - 1}];
  unsignedIntegerValue = [v13 unsignedIntegerValue];
  descriptor3 = [(MLCEmbeddingLayer *)self descriptor];
  embeddingDimension = [descriptor3 embeddingDimension];
  if (unsignedIntegerValue != [embeddingDimension unsignedIntegerValue])
  {

    goto LABEL_13;
  }

  weights2 = [(MLCEmbeddingLayer *)self weights];
  [weights2 descriptor];
  v17 = v71 = deviceCopy;
  [v17 shape];
  v18 = v70 = tensorCopy;
  descriptor4 = [(MLCTensor *)self->_weights descriptor];
  [v18 objectAtIndexedSubscript:{objc_msgSend(descriptor4, "dimensionCount") - 2}];
  v20 = v67 = weights;
  unsignedIntegerValue2 = [v20 unsignedIntegerValue];
  descriptor5 = [(MLCEmbeddingLayer *)self descriptor];
  [descriptor5 embeddingCount];
  v22 = v60 = self;
  unsignedIntegerValue3 = [v22 unsignedIntegerValue];

  tensorCopy = v70;
  deviceCopy = v71;

  if (unsignedIntegerValue2 != unsignedIntegerValue3)
  {
LABEL_13:
    v50 = +[MLCLog framework];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      [MLCEmbeddingLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    v51 = 0;
    v34 = tensorsCopy;
    goto LABEL_16;
  }

  descriptor6 = [v70 descriptor];
  shape2 = [descriptor6 shape];
  descriptor7 = [v70 descriptor];
  v26 = [shape2 objectAtIndexedSubscript:{objc_msgSend(descriptor7, "dimensionCount") - 1}];
  unsignedIntegerValue4 = [v26 unsignedIntegerValue];
  descriptor8 = [(MLCEmbeddingLayer *)v60 descriptor];
  embeddingDimension2 = [descriptor8 embeddingDimension];
  unsignedIntegerValue5 = [embeddingDimension2 unsignedIntegerValue];

  if (unsignedIntegerValue4 != unsignedIntegerValue5)
  {
    v50 = +[MLCLog framework];
    deviceCopy = v71;
    v34 = tensorsCopy;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      [MLCEmbeddingLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_19;
  }

  descriptor9 = [v70 descriptor];
  shape3 = [descriptor9 shape];
  descriptor10 = [v70 descriptor];
  v73 = [shape3 objectAtIndexedSubscript:{objc_msgSend(descriptor10, "dimensionCount") - 2}];
  unsignedIntegerValue6 = [v73 unsignedIntegerValue];
  v34 = tensorsCopy;
  v68 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor11 = [v68 descriptor];
  shape4 = [descriptor11 shape];
  v36 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor12 = [v36 descriptor];
  v38 = [shape4 objectAtIndexedSubscript:{objc_msgSend(descriptor12, "dimensionCount") - 1}];
  tensorCopy = v70;
  if (unsignedIntegerValue6 != [v38 unsignedIntegerValue])
  {

    deviceCopy = v71;
    goto LABEL_21;
  }

  descriptor13 = [v70 descriptor];
  [descriptor13 shape];
  v39 = v64 = descriptor9;
  v40 = [v39 objectAtIndexedSubscript:0];
  unsignedIntegerValue7 = [v40 unsignedIntegerValue];
  v41 = [tensorsCopy objectAtIndexedSubscript:0];
  [v41 descriptor];
  v42 = v59 = shape3;
  shape5 = [v42 shape];
  v44 = [shape5 objectAtIndexedSubscript:0];
  unsignedIntegerValue8 = [v44 unsignedIntegerValue];

  v34 = tensorsCopy;
  tensorCopy = v70;

  deviceCopy = v71;
  if (unsignedIntegerValue7 != unsignedIntegerValue8)
  {
LABEL_21:
    v50 = +[MLCLog framework];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      [MLCEmbeddingLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    v51 = 0;
    goto LABEL_16;
  }

  v45 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor14 = [v45 descriptor];
  dataType = [descriptor14 dataType];

  if (dataType != 5)
  {
    v50 = +[MLCLog framework];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      [MLCEmbeddingLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_19;
  }

  if ([v71 type] == 1 && !-[MLCLayer compileForInferenceOnly](v60, "compileForInferenceOnly"))
  {
    descriptor15 = [(MLCEmbeddingLayer *)v60 descriptor];
    scalesGradientByFrequency = [descriptor15 scalesGradientByFrequency];

    if (scalesGradientByFrequency)
    {
      v50 = +[MLCLog framework];
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        [MLCEmbeddingLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
      }

LABEL_19:
      v51 = 0;
      tensorCopy = v70;
      goto LABEL_16;
    }
  }

  computeEngine = [v71 computeEngine];
  descriptor16 = [(MLCEmbeddingLayer *)v60 descriptor];
  weights3 = [(MLCEmbeddingLayer *)v60 weights];
  v50 = [computeEngine embeddingLayerWithDescriptor:descriptor16 weights:weights3 inferenceOnly:{-[MLCLayer compileForInferenceOnly](v60, "compileForInferenceOnly")}];

  if (v50 && [v50 count])
  {
    v77.receiver = v60;
    v77.super_class = MLCEmbeddingLayer;
    [(MLCLayer *)&v77 bindDevice:v71 deviceOps:v50];
    weights4 = [(MLCEmbeddingLayer *)v60 weights];
    [weights4 setDevice:v71];
    v51 = 1;
    tensorCopy = v70;
  }

  else
  {
    weights4 = +[MLCLog framework];
    tensorCopy = v70;
    if (os_log_type_enabled(weights4, OS_LOG_TYPE_ERROR))
    {
      [MLCScatterLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    v51 = 0;
  }

LABEL_16:
  return v51;
}

- (BOOL)allocateDataForOptimizer:(id)optimizer
{
  optimizerCopy = optimizer;
  weightsParameter = [(MLCEmbeddingLayer *)self weightsParameter];
  device = [(MLCLayer *)self device];
  [weightsParameter allocateDataForOptimizer:optimizerCopy device:device isVector:0];

  device2 = [(MLCLayer *)self device];
  computeEngine = [device2 computeEngine];
  deviceOps = [(MLCLayer *)self deviceOps];
  weights = [(MLCEmbeddingLayer *)self weights];
  [computeEngine setConvolutionLayerOptimizerDataForDeviceOps:deviceOps weights:weights bias:0];

  return 1;
}

- (void)allocateGradientsForParameters
{
  v9[1] = *MEMORY[0x277D85DE8];
  device = [(MLCLayer *)self device];
  computeEngine = [device computeEngine];
  deviceOps = [(MLCLayer *)self deviceOps];
  weights = [(MLCEmbeddingLayer *)self weights];
  v9[0] = weights;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [computeEngine allocateParameterGradientsForDeviceOps:deviceOps parameters:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (unint64_t)allocatedDataSizeForTraining:(BOOL)training optimizer:(id)optimizer
{
  trainingCopy = training;
  optimizerCopy = optimizer;
  weights = [(MLCEmbeddingLayer *)self weights];
  descriptor = [weights descriptor];
  tensorAllocationSizeInBytes = [descriptor tensorAllocationSizeInBytes];

  if (trainingCopy)
  {
    tensorAllocationSizeInBytes *= [optimizerCopy numOptimizerDataBuffers] + 2;
  }

  return tensorAllocationSizeInBytes;
}

- (id)resultTensorFromSources:(id)sources
{
  v4 = [sources objectAtIndexedSubscript:0];
  descriptor = [v4 descriptor];
  shape = [descriptor shape];
  v7 = [shape mutableCopy];

  descriptor2 = [(MLCEmbeddingLayer *)self descriptor];
  embeddingDimension = [descriptor2 embeddingDimension];
  [v7 addObject:embeddingDimension];

  weights = [(MLCEmbeddingLayer *)self weights];
  descriptor3 = [weights descriptor];
  v12 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v7, [descriptor3 dataType]);

  v13 = [MLCTensor tensorWithDescriptor:v12];

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  descriptor = [(MLCEmbeddingLayer *)self descriptor];
  weights = [(MLCEmbeddingLayer *)self weights];
  resultTensors = [(MLCLayer *)self resultTensors];
  v9 = [v3 stringWithFormat:@"%@: { descriptor=%@ : weight=%@ : resultTensor=%@ }", v5, descriptor, weights, resultTensors];

  return v9;
}

- (id)summarizedDOTDescription
{
  v17 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v15 = NSStringFromClass(v3);
  layerID = [(MLCLayer *)self layerID];
  descriptor = [(MLCEmbeddingLayer *)self descriptor];
  embeddingCount = [descriptor embeddingCount];
  descriptor2 = [(MLCEmbeddingLayer *)self descriptor];
  embeddingDimension = [descriptor2 embeddingDimension];
  descriptor3 = [(MLCEmbeddingLayer *)self descriptor];
  paddingIndex = [descriptor3 paddingIndex];
  descriptor4 = [(MLCEmbeddingLayer *)self descriptor];
  maximumNorm = [descriptor4 maximumNorm];
  descriptor5 = [(MLCEmbeddingLayer *)self descriptor];
  pNorm = [descriptor5 pNorm];
  descriptor6 = [(MLCEmbeddingLayer *)self descriptor];
  v13 = [v17 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Embedding Count: %@    Embedding Dimension: %@<BR />PaddingIndex: %@   Maximum Norm: %@   P Norm: %@<BR />Scale Gradient By Frequency: %hhd</FONT>>", v15, layerID, embeddingCount, embeddingDimension, paddingIndex, maximumNorm, pNorm, objc_msgSend(descriptor6, "scalesGradientByFrequency")];

  return v13;
}

- (void)linkAssociatedTensors
{
  weights = [(MLCEmbeddingLayer *)self weights];
  childLayers = [weights childLayers];
  [childLayers addObject:self];
}

- (void)unlinkAssociatedTensors
{
  weights = [(MLCEmbeddingLayer *)self weights];
  childLayers = [weights childLayers];
  [childLayers removeObject:self];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
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

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.4(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
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