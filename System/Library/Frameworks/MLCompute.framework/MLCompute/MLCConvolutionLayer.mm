@interface MLCConvolutionLayer
+ (MLCConvolutionLayer)layerWithWeights:(MLCTensor *)weights biases:(MLCTensor *)biases descriptor:(MLCConvolutionDescriptor *)descriptor;
- (BOOL)allocateDataForOptimizer:(id)optimizer;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (MLCConvolutionLayer)initWithWeights:(id)weights biases:(id)biases descriptor:(id)descriptor;
- (id)description;
- (id)resultTensorFromSources:(id)sources;
- (id)summarizedDOTDescription;
- (unint64_t)allocatedDataSizeForTraining:(BOOL)training optimizer:(id)optimizer;
- (unint64_t)parametersCount;
- (unint64_t)resultSizeFromSourceSize:(unint64_t)size dimension:(unint64_t)dimension;
- (void)allocateGradientsForParameters;
- (void)linkAssociatedTensors;
- (void)unlinkAssociatedTensors;
@end

@implementation MLCConvolutionLayer

+ (MLCConvolutionLayer)layerWithWeights:(MLCTensor *)weights biases:(MLCTensor *)biases descriptor:(MLCConvolutionDescriptor *)descriptor
{
  v8 = descriptor;
  v9 = biases;
  v10 = weights;
  v11 = [[self alloc] initWithWeights:v10 biases:v9 descriptor:v8];

  return v11;
}

- (MLCConvolutionLayer)initWithWeights:(id)weights biases:(id)biases descriptor:(id)descriptor
{
  weightsCopy = weights;
  biasesCopy = biases;
  descriptorCopy = descriptor;
  descriptor = [weightsCopy descriptor];
  shape = [descriptor shape];
  v13 = [shape objectAtIndexedSubscript:0];
  unsignedIntegerValue = [v13 unsignedIntegerValue];

  if (unsignedIntegerValue < 2)
  {
    data = [weightsCopy data];

    if (!data)
    {
      v15 = +[MLCLog framework];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [MLCConvolutionLayer initWithWeights:a2 biases:? descriptor:?];
      }

      goto LABEL_11;
    }

    v71 = biasesCopy;
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
          [MLCConvolutionLayer initWithWeights:a2 biases:? descriptor:?];
        }

        goto LABEL_11;
      }

      selfCopy = self;
      descriptor3 = [biasesCopy descriptor];
      shape3 = [descriptor3 shape];
      v24 = [shape3 objectAtIndexedSubscript:1];
      unsignedIntegerValue3 = [v24 unsignedIntegerValue];
      v26 = biasesCopy;
      outputFeatureChannelCount = [descriptorCopy outputFeatureChannelCount];

      if (unsignedIntegerValue3 != outputFeatureChannelCount)
      {
        v33 = +[MLCLog framework];
        self = selfCopy;
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          [MLCConvolutionLayer initWithWeights:a2 biases:? descriptor:?];
        }

        goto LABEL_42;
      }

      descriptor4 = [v26 descriptor];
      shape4 = [descriptor4 shape];
      v68 = [shape4 count];
      v29 = v26;
      self = selfCopy;
      if (v68 >= 4)
      {
        descriptor5 = [v29 descriptor];
        shape5 = [descriptor5 shape];
        v32 = [shape5 objectAtIndexedSubscript:3];
        if ([v32 unsignedIntegerValue] > 1)
        {

LABEL_25:
          v33 = +[MLCLog framework];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            [MLCConvolutionLayer initWithWeights:a2 biases:? descriptor:?];
          }

          goto LABEL_42;
        }

        v67 = v32;
        v62 = shape5;
        v64 = descriptor5;
      }

      descriptor6 = [v29 descriptor];
      shape6 = [descriptor6 shape];
      if ([shape6 count] < 3)
      {
        v39 = 0;
      }

      else
      {
        descriptor7 = [v29 descriptor];
        shape7 = [descriptor7 shape];
        [shape7 objectAtIndexedSubscript:2];
        v37 = v66 = shape4;
        v38 = [v37 unsignedIntegerValue] > 1;

        shape4 = v66;
        v39 = v38;
      }

      if (v68 >= 4)
      {
      }

      if (v39)
      {
        goto LABEL_25;
      }

      childLayers = [weightsCopy childLayers];
      v41 = [childLayers count];
      childLayers2 = [v71 childLayers];
      v43 = [childLayers2 count];

      if (v41 != v43)
      {
        v33 = +[MLCLog framework];
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
LABEL_42:

          selfCopy2 = 0;
LABEL_43:
          biasesCopy = v71;
          goto LABEL_44;
        }

LABEL_41:
        [MLCFullyConnectedLayer initWithWeights:a2 biases:? descriptor:?];
        goto LABEL_42;
      }

      childLayers3 = [weightsCopy childLayers];
      v45 = [childLayers3 count];

      v46 = v71;
      if (v45)
      {
        v47 = 0;
        while (1)
        {
          childLayers4 = [weightsCopy childLayers];
          v49 = [childLayers4 objectAtIndexedSubscript:v47];
          childLayers5 = [v46 childLayers];
          v51 = [childLayers5 objectAtIndexedSubscript:v47];

          if (v49 != v51)
          {
            break;
          }

          ++v47;
          childLayers6 = [weightsCopy childLayers];
          v53 = [childLayers6 count];

          v46 = v71;
          if (v47 >= v53)
          {
            goto LABEL_32;
          }
        }

        v33 = +[MLCLog framework];
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }
    }

LABEL_32:
    v84.receiver = self;
    v84.super_class = MLCConvolutionLayer;
    v54 = [(MLCLayer *)&v84 initWithLabel:@"Convolution"];
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
      if (v71)
      {
        v58 = [MLCTensorParameter parameterWithTensor:?];
        biasesParameter = v55->_biasesParameter;
        v55->_biasesParameter = v58;

        [(MLCTensor *)v55->_biases setIsLayerParameter:1];
      }

      else
      {
        v60 = v55->_biasesParameter;
        v55->_biasesParameter = 0;
      }

      v83.receiver = v55;
      v83.super_class = MLCConvolutionLayer;
      -[MLCLayer setKernelWidth:](&v83, sel_setKernelWidth_, [descriptorCopy kernelWidth]);
      v82.receiver = v55;
      v82.super_class = MLCConvolutionLayer;
      -[MLCLayer setKernelHeight:](&v82, sel_setKernelHeight_, [descriptorCopy kernelHeight]);
      v81.receiver = v55;
      v81.super_class = MLCConvolutionLayer;
      -[MLCLayer setDilationRateInX:](&v81, sel_setDilationRateInX_, [descriptorCopy dilationRateInX]);
      v80.receiver = v55;
      v80.super_class = MLCConvolutionLayer;
      -[MLCLayer setDilationRateInY:](&v80, sel_setDilationRateInY_, [descriptorCopy dilationRateInY]);
      v79.receiver = v55;
      v79.super_class = MLCConvolutionLayer;
      -[MLCLayer setStrideInX:](&v79, sel_setStrideInX_, [descriptorCopy strideInX]);
      v78.receiver = v55;
      v78.super_class = MLCConvolutionLayer;
      -[MLCLayer setStrideInY:](&v78, sel_setStrideInY_, [descriptorCopy strideInY]);
      v77.receiver = v55;
      v77.super_class = MLCConvolutionLayer;
      -[MLCLayer setPaddingPolicy:](&v77, sel_setPaddingPolicy_, [descriptorCopy paddingPolicy]);
      v76.receiver = v55;
      v76.super_class = MLCConvolutionLayer;
      -[MLCLayer setPaddingSizeInX:](&v76, sel_setPaddingSizeInX_, [descriptorCopy paddingSizeInX]);
      v75.receiver = v55;
      v75.super_class = MLCConvolutionLayer;
      -[MLCLayer setPaddingSizeInY:](&v75, sel_setPaddingSizeInY_, [descriptorCopy paddingSizeInY]);
      v74.receiver = v55;
      v74.super_class = MLCConvolutionLayer;
      [(MLCLayer *)&v74 setIsUpdatable:1];
    }

    self = v55;
    selfCopy2 = self;
    goto LABEL_43;
  }

  v15 = +[MLCLog framework];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [MLCConvolutionLayer initWithWeights:a2 biases:? descriptor:?];
  }

LABEL_11:

  selfCopy2 = 0;
LABEL_44:

  return selfCopy2;
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  weights = [(MLCConvolutionLayer *)self weights];
  parentLayers = [weights parentLayers];
  v14 = [parentLayers count];

  if (!v14)
  {
    biases = [(MLCConvolutionLayer *)self biases];
    parentLayers2 = [biases parentLayers];
    v18 = [parentLayers2 count];

    if (v18)
    {
      v15 = +[MLCLog framework];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [MLCConvolutionLayer compileForDevice:a2 sourceTensors:self resultTensor:?];
      }

      goto LABEL_7;
    }

    v138 = a2;
    v139 = tensorsCopy;
    biases2 = [(MLCConvolutionLayer *)self biases];
    childLayers = [biases2 childLayers];
    v23 = [childLayers count];

    if (v23)
    {
      weights2 = [(MLCConvolutionLayer *)self weights];
      childLayers2 = [weights2 childLayers];
      v26 = [childLayers2 count];
      biases3 = [(MLCConvolutionLayer *)self biases];
      childLayers3 = [biases3 childLayers];
      v29 = [childLayers3 count];

      if (v26 != v29)
      {
        v15 = +[MLCLog framework];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [MLCFullyConnectedLayer compileForDevice:v138 sourceTensors:? resultTensor:?];
        }

        v19 = 0;
        goto LABEL_46;
      }

      weights3 = [(MLCConvolutionLayer *)self weights];
      childLayers4 = [weights3 childLayers];
      v32 = [childLayers4 count];

      if (v32)
      {
        v33 = 0;
        while (1)
        {
          weights4 = [(MLCConvolutionLayer *)self weights];
          childLayers5 = [weights4 childLayers];
          v36 = [childLayers5 objectAtIndexedSubscript:v33];
          biases4 = [(MLCConvolutionLayer *)self biases];
          childLayers6 = [biases4 childLayers];
          v39 = [childLayers6 objectAtIndexedSubscript:v33];

          if (v36 != v39)
          {
            break;
          }

          ++v33;
          weights5 = [(MLCConvolutionLayer *)self weights];
          childLayers7 = [weights5 childLayers];
          v42 = [childLayers7 count];

          if (v33 >= v42)
          {
            goto LABEL_15;
          }
        }

        v15 = +[MLCLog framework];
        tensorsCopy = v139;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [MLCFullyConnectedLayer compileForDevice:v138 sourceTensors:? resultTensor:?];
        }

        goto LABEL_7;
      }
    }

LABEL_15:
    descriptor = [(MLCConvolutionLayer *)self descriptor];
    paddingPolicy = [descriptor paddingPolicy];

    descriptor2 = [(MLCConvolutionLayer *)self descriptor];
    paddingSizeInX = [descriptor2 paddingSizeInX];

    descriptor3 = [(MLCConvolutionLayer *)self descriptor];
    paddingSizeInY = [descriptor3 paddingSizeInY];

    paddingPolicy2 = [(MLCLayer *)self paddingPolicy];
    descriptor4 = [(MLCConvolutionLayer *)self descriptor];
    paddingPolicy3 = [descriptor4 paddingPolicy];

    v135 = paddingPolicy3;
    v136 = paddingPolicy2;
    if (paddingPolicy2 != paddingPolicy3)
    {
      paddingPolicy4 = [(MLCLayer *)self paddingPolicy];
      descriptor5 = [(MLCConvolutionLayer *)self descriptor];
      [descriptor5 setPaddingPolicy:paddingPolicy4];

      paddingSizeInX2 = [(MLCLayer *)self paddingSizeInX];
      descriptor6 = [(MLCConvolutionLayer *)self descriptor];
      [descriptor6 setPaddingSizeInX:paddingSizeInX2];

      paddingSizeInY2 = [(MLCLayer *)self paddingSizeInY];
      descriptor7 = [(MLCConvolutionLayer *)self descriptor];
      [descriptor7 setPaddingSizeInY:paddingSizeInY2];
    }

    fusedLayers = [(MLCLayer *)self fusedLayers];
    v56 = [fusedLayers count];

    if (v56)
    {
      fusedLayers2 = [(MLCLayer *)self fusedLayers];
      v58 = [fusedLayers2 objectAtIndexedSubscript:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      fusedLayers3 = [(MLCLayer *)self fusedLayers];
      computeEngine5 = [fusedLayers3 objectAtIndexedSubscript:0];
      if (isKindOfClass)
      {

        fusedLayers4 = [(MLCLayer *)self fusedLayers];
        v63 = [fusedLayers4 count];

        v128 = tensorCopy;
        if (v63 < 2)
        {
          descriptor8 = 0;
        }

        else
        {
          fusedLayers5 = [(MLCLayer *)self fusedLayers];
          v65 = [fusedLayers5 objectAtIndexedSubscript:1];
          descriptor8 = [v65 descriptor];
        }

        computeEngine = [deviceCopy computeEngine];
        descriptor9 = [(MLCConvolutionLayer *)self descriptor];
        mean = [computeEngine5 mean];
        variance = [computeEngine5 variance];
        beta = [computeEngine5 beta];
        gamma = [computeEngine5 gamma];
        [computeEngine5 varianceEpsilon];
        v79 = v78;
        [computeEngine5 momentum];
        v81 = v80;
        weights6 = [(MLCConvolutionLayer *)self weights];
        biases5 = [(MLCConvolutionLayer *)self biases];
        descriptor11 = descriptor9;
        LODWORD(v84) = v79;
        LODWORD(v85) = v81;
        v15 = [computeEngine fusedConvolutionBatchNormalizationAndNeuronLayerWithDescriptor:descriptor9 mean:mean variance:variance beta:beta gamma:gamma varianceEpsilon:descriptor8 momentum:v84 neuronDescriptor:v85 weights:weights6 biasTerms:biases5];

        computeEngine3 = computeEngine;
        tensorCopy = v128;
      }

      else
      {
        objc_opt_class();
        v69 = objc_opt_isKindOfClass();

        fusedLayers6 = [(MLCLayer *)self fusedLayers];
        computeEngine5 = [fusedLayers6 objectAtIndexedSubscript:0];
        if (v69)
        {

          fusedLayers7 = [(MLCLayer *)self fusedLayers];
          v72 = [fusedLayers7 count];

          if (v72 < 2)
          {
            descriptor8 = 0;
          }

          else
          {
            fusedLayers8 = [(MLCLayer *)self fusedLayers];
            v74 = [fusedLayers8 objectAtIndexedSubscript:1];
            descriptor8 = [v74 descriptor];
          }

          computeEngine2 = [deviceCopy computeEngine];
          descriptor10 = [(MLCConvolutionLayer *)self descriptor];
          beta2 = [computeEngine5 beta];
          gamma2 = [computeEngine5 gamma];
          [computeEngine5 varianceEpsilon];
          v96 = v95;
          [computeEngine5 momentum];
          v98 = v97;
          weights7 = [(MLCConvolutionLayer *)self weights];
          biases6 = [(MLCConvolutionLayer *)self biases];
          v101 = beta2;
          LODWORD(v102) = v96;
          LODWORD(v103) = v98;
          v15 = [computeEngine2 fusedConvolutionInstanceNormalizationAndNeuronLayerWithDescriptor:descriptor10 beta:beta2 gamma:gamma2 varianceEpsilon:descriptor8 momentum:weights7 neuronDescriptor:biases6 weights:v102 biasTerms:v103];

          descriptor11 = descriptor10;
          computeEngine3 = computeEngine2;
        }

        else
        {
          objc_opt_class();
          v86 = objc_opt_isKindOfClass();

          fusedLayers9 = [(MLCLayer *)self fusedLayers];
          computeEngine5 = [fusedLayers9 objectAtIndexedSubscript:0];

          if (v86)
          {
            fusedLayers10 = [(MLCLayer *)self fusedLayers];
            v89 = [fusedLayers10 count];

            if (v89 < 2)
            {
              descriptor8 = 0;
            }

            else
            {
              fusedLayers11 = [(MLCLayer *)self fusedLayers];
              v91 = [fusedLayers11 objectAtIndexedSubscript:1];
              descriptor8 = [v91 descriptor];
            }

            computeEngine3 = [deviceCopy computeEngine];
            descriptor11 = [(MLCConvolutionLayer *)self descriptor];
            beta3 = [computeEngine5 beta];
            gamma3 = [computeEngine5 gamma];
            [computeEngine5 varianceEpsilon];
            v110 = v109;
            groupCount = [computeEngine5 groupCount];
            weights8 = [(MLCConvolutionLayer *)self weights];
            biases7 = [(MLCConvolutionLayer *)self biases];
            LODWORD(v113) = v110;
            v15 = [computeEngine3 fusedConvolutionGroupNormalizationAndNeuronLayerWithDescriptor:descriptor11 beta:beta3 gamma:gamma3 varianceEpsilon:groupCount momentum:descriptor8 groupCount:weights8 neuronDescriptor:v113 weights:0.0 biasTerms:biases7];
          }

          else
          {
            computeEngine4 = [deviceCopy computeEngine];
            computeEngine3 = [computeEngine5 descriptor];
            descriptor12 = [(MLCConvolutionLayer *)self descriptor];
            weights9 = [(MLCConvolutionLayer *)self weights];
            biases8 = [(MLCConvolutionLayer *)self biases];
            descriptor8 = computeEngine4;
            v15 = [computeEngine4 fusedConvolutionAndNeuronLayerWithDescriptor:computeEngine3 convolutionDescriptor:descriptor12 weights:weights9 biasTerms:biases8];

            descriptor11 = descriptor12;
          }
        }
      }
    }

    else
    {
      computeEngine5 = [deviceCopy computeEngine];
      descriptor13 = [(MLCConvolutionLayer *)self descriptor];
      computeEngine3 = [(MLCConvolutionLayer *)self weights];
      descriptor11 = [(MLCConvolutionLayer *)self biases];
      descriptor8 = descriptor13;
      v15 = [computeEngine5 convolutionLayerWithDescriptor:descriptor13 weights:computeEngine3 biasTerms:descriptor11];
    }

    if (v15 && [v15 count])
    {
      computeEngine6 = [deviceCopy computeEngine];
      v19 = [computeEngine6 compileLayerDeviceOps:v15 sourceTensors:v139 resultTensor:tensorCopy];

      v140.receiver = self;
      v140.super_class = MLCConvolutionLayer;
      [(MLCLayer *)&v140 bindDevice:deviceCopy deviceOps:v15];
      fusedLayers12 = [(MLCLayer *)self fusedLayers];
      v116 = [fusedLayers12 count];

      if (v116)
      {
        v117 = 0;
        do
        {
          fusedLayers13 = [(MLCLayer *)self fusedLayers];
          v119 = [fusedLayers13 objectAtIndexedSubscript:v117];
          [v119 bindDevice:deviceCopy deviceOps:v15];

          ++v117;
          fusedLayers14 = [(MLCLayer *)self fusedLayers];
          v121 = [fusedLayers14 count];
        }

        while (v117 < v121);
      }

      if (v136 == v135)
      {
LABEL_46:
        tensorsCopy = v139;
        goto LABEL_8;
      }

      descriptor14 = [(MLCConvolutionLayer *)self descriptor];
      [descriptor14 setPaddingPolicy:paddingPolicy];

      descriptor15 = [(MLCConvolutionLayer *)self descriptor];
      [descriptor15 setPaddingSizeInX:paddingSizeInX];

      descriptor16 = [(MLCConvolutionLayer *)self descriptor];
      [descriptor16 setPaddingSizeInY:paddingSizeInY];
    }

    else
    {
      descriptor16 = +[MLCLog framework];
      if (os_log_type_enabled(descriptor16, OS_LOG_TYPE_ERROR))
      {
        [MLCScatterLayer compileForDevice:v138 sourceTensors:? resultTensor:?];
      }

      v19 = 0;
    }

    tensorsCopy = v139;

    goto LABEL_8;
  }

  v15 = +[MLCLog framework];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [MLCConvolutionLayer compileForDevice:a2 sourceTensors:self resultTensor:?];
  }

LABEL_7:
  v19 = 0;
LABEL_8:

  return v19;
}

- (BOOL)allocateDataForOptimizer:(id)optimizer
{
  optimizerCopy = optimizer;
  weightsParameter = [(MLCConvolutionLayer *)self weightsParameter];
  device = [(MLCLayer *)self device];
  [weightsParameter allocateDataForOptimizer:optimizerCopy device:device isVector:1];

  biases = [(MLCConvolutionLayer *)self biases];

  if (biases)
  {
    biasesParameter = [(MLCConvolutionLayer *)self biasesParameter];
    device2 = [(MLCLayer *)self device];
    [biasesParameter allocateDataForOptimizer:optimizerCopy device:device2 isVector:1];
  }

  device3 = [(MLCLayer *)self device];
  computeEngine = [device3 computeEngine];
  deviceOps = [(MLCLayer *)self deviceOps];
  weights = [(MLCConvolutionLayer *)self weights];
  biases2 = [(MLCConvolutionLayer *)self biases];
  [computeEngine setConvolutionLayerOptimizerDataForDeviceOps:deviceOps weights:weights bias:biases2];

  return 1;
}

- (unint64_t)allocatedDataSizeForTraining:(BOOL)training optimizer:(id)optimizer
{
  trainingCopy = training;
  optimizerCopy = optimizer;
  weights = [(MLCConvolutionLayer *)self weights];
  descriptor = [weights descriptor];
  tensorAllocationSizeInBytes = [descriptor tensorAllocationSizeInBytes];

  biases = [(MLCConvolutionLayer *)self biases];
  descriptor2 = [biases descriptor];
  tensorAllocationSizeInBytes2 = [descriptor2 tensorAllocationSizeInBytes];

  if (trainingCopy)
  {
    v13 = tensorAllocationSizeInBytes2 + tensorAllocationSizeInBytes;
    tensorAllocationSizeInBytes += tensorAllocationSizeInBytes * [optimizerCopy numOptimizerDataBuffers];
    tensorAllocationSizeInBytes2 += tensorAllocationSizeInBytes2 * [optimizerCopy numOptimizerDataBuffers];
  }

  else
  {
    v13 = 0;
  }

  weights2 = [(MLCConvolutionLayer *)self weights];
  childLayers = [weights2 childLayers];
  v16 = [childLayers count];

  biases2 = [(MLCConvolutionLayer *)self biases];
  childLayers2 = [biases2 childLayers];
  v19 = [childLayers2 count];

  if (v19)
  {
    biases3 = [(MLCConvolutionLayer *)self biases];
    childLayers3 = [biases3 childLayers];
    tensorAllocationSizeInBytes2 /= [childLayers3 count];
  }

  return tensorAllocationSizeInBytes2 + v13 + tensorAllocationSizeInBytes / v16;
}

- (void)allocateGradientsForParameters
{
  v13[2] = *MEMORY[0x277D85DE8];
  biases = [(MLCConvolutionLayer *)self biases];
  weights = [(MLCConvolutionLayer *)self weights];
  v5 = weights;
  if (biases)
  {
    v13[0] = weights;
    biases2 = [(MLCConvolutionLayer *)self biases];
    v13[1] = biases2;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  }

  else
  {
    v12 = weights;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  }

  device = [(MLCLayer *)self device];
  computeEngine = [device computeEngine];
  deviceOps = [(MLCLayer *)self deviceOps];
  [computeEngine allocateParameterGradientsForDeviceOps:deviceOps parameters:v7];

  v11 = *MEMORY[0x277D85DE8];
}

- (unint64_t)resultSizeFromSourceSize:(unint64_t)size dimension:(unint64_t)dimension
{
  if (dimension >= 2)
  {
    if (dimension == 3)
    {
      kernelWidth = [(MLCLayer *)self kernelWidth];
      dilationRateInX = [(MLCLayer *)self dilationRateInX];
      strideInX = [(MLCLayer *)self strideInX];
      paddingSizeInX = [(MLCLayer *)self paddingSizeInX];
    }

    else
    {
      kernelWidth = [(MLCLayer *)self kernelHeight];
      dilationRateInX = [(MLCLayer *)self dilationRateInY];
      strideInX = [(MLCLayer *)self strideInY];
      paddingSizeInX = [(MLCLayer *)self paddingSizeInY];
    }

    v11 = paddingSizeInX;
    descriptor = [(MLCConvolutionLayer *)self descriptor];
    isConvolutionTranspose = [descriptor isConvolutionTranspose];

    if (isConvolutionTranspose)
    {
      if ([(MLCLayer *)self paddingPolicy])
      {
        size = dilationRateInX * (kernelWidth - 1) + strideInX * (size - 1) + 1;
        if ([(MLCLayer *)self paddingPolicy]!= 1)
        {
          size -= 2 * v11;
        }
      }

      else
      {
        size *= strideInX;
      }
    }

    else
    {
      v15.receiver = self;
      v15.super_class = MLCConvolutionLayer;
      return [(MLCLayer *)&v15 resultSizeFromSourceSize:size dimension:dimension];
    }
  }

  return size;
}

- (id)resultTensorFromSources:(id)sources
{
  sourcesCopy = sources;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  v6 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor = [v6 descriptor];
  shape = [descriptor shape];
  v9 = [shape objectAtIndexedSubscript:0];
  [v5 setObject:v9 atIndexedSubscript:0];

  v10 = MEMORY[0x277CCABB0];
  descriptor2 = [(MLCConvolutionLayer *)self descriptor];
  v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(descriptor2, "outputFeatureChannelCount")}];
  [v5 setObject:v12 atIndexedSubscript:1];

  v13 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor3 = [v13 descriptor];
  shape2 = [descriptor3 shape];
  v16 = [shape2 count];

  v17 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor4 = [v17 descriptor];
  shape3 = [descriptor4 shape];
  v20 = 2;
  v21 = [shape3 objectAtIndexedSubscript:2];
  unsignedIntegerValue = [v21 unsignedIntegerValue];
  if (v16 != 3)
  {
    v23 = [(MLCConvolutionLayer *)self resultSizeFromSourceSize:unsignedIntegerValue dimension:2];

    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23];
    [v5 setObject:v24 atIndexedSubscript:2];

    v17 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor4 = [v17 descriptor];
    shape3 = [descriptor4 shape];
    v20 = 3;
    v21 = [shape3 objectAtIndexedSubscript:3];
    unsignedIntegerValue = [v21 unsignedIntegerValue];
  }

  v25 = [(MLCConvolutionLayer *)self resultSizeFromSourceSize:unsignedIntegerValue dimension:3];

  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
  [v5 setObject:v26 atIndexedSubscript:v20];

  v27 = [v5 copy];
  v28 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor5 = [v28 descriptor];
  v30 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v27, [descriptor5 dataType]);

  v31 = [MLCTensor tensorWithDescriptor:v30];

  return v31;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  accumulatorPrecisionOption = [(MLCConvolutionLayer *)self accumulatorPrecisionOption];
  weights = [(MLCConvolutionLayer *)self weights];
  biases = [(MLCConvolutionLayer *)self biases];
  descriptor = [(MLCConvolutionLayer *)self descriptor];
  conditionalTreeNode = [(MLCLayer *)self conditionalTreeNode];
  resultTensors = [(MLCLayer *)self resultTensors];
  v12 = [v3 stringWithFormat:@"%@: { accumulatorPrecisionOption=%d : weights=%@ : biasTerms=%@ : descriptor=%@ : conditionalTreeNode=%@ : resultTensor=%@ }", v5, accumulatorPrecisionOption, weights, biases, descriptor, conditionalTreeNode, resultTensors];

  return v12;
}

- (id)summarizedDOTDescription
{
  v3 = objc_opt_class();
  v34 = NSStringFromClass(v3);
  descriptor = [(MLCConvolutionLayer *)self descriptor];
  paddingPolicy = [descriptor paddingPolicy];

  if (paddingPolicy >= 2)
  {
    if (paddingPolicy != 2)
    {
      v33 = 0;
      goto LABEL_7;
    }

    v7 = MEMORY[0x277CCACA8];
    descriptor2 = [(MLCConvolutionLayer *)self descriptor];
    v8 = MLCPaddingPolicyDebugDescription([descriptor2 paddingPolicy]);
    descriptor3 = [(MLCConvolutionLayer *)self descriptor];
    paddingSizeInX = [descriptor3 paddingSizeInX];
    descriptor4 = [(MLCConvolutionLayer *)self descriptor];
    v33 = [v7 stringWithFormat:@"%@ (%lu, %lu)", v8, paddingSizeInX, objc_msgSend(descriptor4, "paddingSizeInY")];
  }

  else
  {
    descriptor2 = [(MLCConvolutionLayer *)self descriptor];
    v33 = MLCPaddingPolicyDebugDescription([descriptor2 paddingPolicy]);
  }

LABEL_7:
  v30 = MEMORY[0x277CCACA8];
  layerID = [(MLCLayer *)self layerID];
  descriptor5 = [(MLCConvolutionLayer *)self descriptor];
  v26 = MLCConvolutionTypeDebugDescription([descriptor5 convolutionType]);
  descriptor6 = [(MLCConvolutionLayer *)self descriptor];
  kernelWidth = [descriptor6 kernelWidth];
  descriptor7 = [(MLCConvolutionLayer *)self descriptor];
  kernelWidth2 = [descriptor7 kernelWidth];
  descriptor8 = [(MLCConvolutionLayer *)self descriptor];
  strideInX = [descriptor8 strideInX];
  descriptor9 = [(MLCConvolutionLayer *)self descriptor];
  strideInY = [descriptor9 strideInY];
  descriptor10 = [(MLCConvolutionLayer *)self descriptor];
  inputFeatureChannelCount = [descriptor10 inputFeatureChannelCount];
  descriptor11 = [(MLCConvolutionLayer *)self descriptor];
  outputFeatureChannelCount = [descriptor11 outputFeatureChannelCount];
  descriptor12 = [(MLCConvolutionLayer *)self descriptor];
  dilationRateInX = [descriptor12 dilationRateInX];
  descriptor13 = [(MLCConvolutionLayer *)self descriptor];
  v21 = [v30 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Convolution Type: %@<BR />Kernel: (%lu, %lu)     Stride: (%lu, %lu)<BR />Input Feature Channel Count: %lu<BR />Output Feature Channel Count: %lu<BR />Dilation: (%lu, %lu)   Padding: %@</FONT>>", v34, layerID, v26, kernelWidth, kernelWidth2, strideInX, strideInY, inputFeatureChannelCount, outputFeatureChannelCount, dilationRateInX, objc_msgSend(descriptor13, "dilationRateInY"), v33];

  return v21;
}

- (void)linkAssociatedTensors
{
  weights = [(MLCConvolutionLayer *)self weights];
  childLayers = [weights childLayers];
  [childLayers addObject:self];

  biases = [(MLCConvolutionLayer *)self biases];

  if (biases)
  {
    biases2 = [(MLCConvolutionLayer *)self biases];
    childLayers2 = [biases2 childLayers];
    [childLayers2 addObject:self];
  }
}

- (void)unlinkAssociatedTensors
{
  weights = [(MLCConvolutionLayer *)self weights];
  childLayers = [weights childLayers];
  [childLayers removeObject:self];

  biases = [(MLCConvolutionLayer *)self biases];

  if (biases)
  {
    biases2 = [(MLCConvolutionLayer *)self biases];
    childLayers2 = [biases2 childLayers];
    [childLayers2 removeObject:self];
  }
}

- (unint64_t)parametersCount
{
  biasesParameter = [(MLCConvolutionLayer *)self biasesParameter];

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

@end