@interface MLCLSTMLayer
+ (MLCLSTMLayer)layerWithDescriptor:(MLCLSTMDescriptor *)descriptor inputWeights:(NSArray *)inputWeights hiddenWeights:(NSArray *)hiddenWeights peepholeWeights:(NSArray *)peepholeWeights biases:(NSArray *)biases;
+ (MLCLSTMLayer)layerWithDescriptor:(MLCLSTMDescriptor *)descriptor inputWeights:(NSArray *)inputWeights hiddenWeights:(NSArray *)hiddenWeights peepholeWeights:(NSArray *)peepholeWeights biases:(NSArray *)biases gateActivations:(NSArray *)gateActivations outputResultActivation:(MLCActivationDescriptor *)outputResultActivation;
- (BOOL)allocateDataForOptimizer:(id)optimizer;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (BOOL)isSupportedShapeForTensorSources:(id)sources;
- (MLCLSTMLayer)initWithDescriptor:(id)descriptor inputWeights:(id)weights hiddenWeights:(id)hiddenWeights peepholeWeights:(id)peepholeWeights biases:(id)biases gateActivations:(id)activations outputResultActivation:(id)activation;
- (id)description;
- (id)resultStateTensorWithSources:(id)sources;
- (id)resultTensorFromSources:(id)sources;
- (id)summarizedDOTDescription;
- (unint64_t)parametersCount;
- (unint64_t)resultSizeFromSourceSize:(unint64_t)size dimension:(unint64_t)dimension;
- (void)allocateGradientsForParameters;
- (void)linkAssociatedTensors;
- (void)unlinkAssociatedTensors;
@end

@implementation MLCLSTMLayer

+ (MLCLSTMLayer)layerWithDescriptor:(MLCLSTMDescriptor *)descriptor inputWeights:(NSArray *)inputWeights hiddenWeights:(NSArray *)hiddenWeights peepholeWeights:(NSArray *)peepholeWeights biases:(NSArray *)biases
{
  v23[4] = *MEMORY[0x277D85DE8];
  v12 = biases;
  v13 = peepholeWeights;
  v14 = hiddenWeights;
  v15 = inputWeights;
  v16 = descriptor;
  v17 = [MLCActivationDescriptor descriptorWithType:3];
  v18 = [MLCActivationDescriptor descriptorWithType:5];
  v23[0] = v17;
  v23[1] = v17;
  v23[2] = v18;
  v23[3] = v17;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v20 = [[self alloc] initWithDescriptor:v16 inputWeights:v15 hiddenWeights:v14 peepholeWeights:v13 biases:v12 gateActivations:v19 outputResultActivation:v18];

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

+ (MLCLSTMLayer)layerWithDescriptor:(MLCLSTMDescriptor *)descriptor inputWeights:(NSArray *)inputWeights hiddenWeights:(NSArray *)hiddenWeights peepholeWeights:(NSArray *)peepholeWeights biases:(NSArray *)biases gateActivations:(NSArray *)gateActivations outputResultActivation:(MLCActivationDescriptor *)outputResultActivation
{
  v16 = outputResultActivation;
  v17 = gateActivations;
  v18 = biases;
  v19 = peepholeWeights;
  v20 = hiddenWeights;
  v21 = inputWeights;
  v22 = descriptor;
  v23 = [[self alloc] initWithDescriptor:v22 inputWeights:v21 hiddenWeights:v20 peepholeWeights:v19 biases:v18 gateActivations:v17 outputResultActivation:v16];

  return v23;
}

- (MLCLSTMLayer)initWithDescriptor:(id)descriptor inputWeights:(id)weights hiddenWeights:(id)hiddenWeights peepholeWeights:(id)peepholeWeights biases:(id)biases gateActivations:(id)activations outputResultActivation:(id)activation
{
  descriptorCopy = descriptor;
  weightsCopy = weights;
  hiddenWeightsCopy = hiddenWeights;
  peepholeWeightsCopy = peepholeWeights;
  biasesCopy = biases;
  obj = activations;
  activationsCopy = activations;
  activationCopy = activation;
  layerCount = [descriptorCopy layerCount];
  v19 = 4 * (layerCount << [descriptorCopy isBidirectional]);
  if ([weightsCopy count] != v19)
  {
    v25 = +[MLCLog framework];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [MLCLSTMLayer initWithDescriptor:inputWeights:hiddenWeights:peepholeWeights:biases:gateActivations:outputResultActivation:];
    }

    v26 = 0;
    v20 = weightsCopy;
    v21 = peepholeWeightsCopy;
    goto LABEL_19;
  }

  if ([hiddenWeightsCopy count] != v19)
  {
    v27 = +[MLCLog framework];
    v20 = weightsCopy;
    v21 = peepholeWeightsCopy;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [MLCLSTMLayer initWithDescriptor:inputWeights:hiddenWeights:peepholeWeights:biases:gateActivations:outputResultActivation:];
    }

    goto LABEL_18;
  }

  v20 = weightsCopy;
  v21 = peepholeWeightsCopy;
  if (peepholeWeightsCopy && [peepholeWeightsCopy count] != v19)
  {
    v27 = +[MLCLog framework];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [MLCLSTMLayer initWithDescriptor:inputWeights:hiddenWeights:peepholeWeights:biases:gateActivations:outputResultActivation:];
    }

LABEL_18:

    v26 = 0;
LABEL_19:
    v22 = biasesCopy;
LABEL_20:
    v24 = activationsCopy;
LABEL_21:
    selfCopy = self;
    goto LABEL_22;
  }

  v22 = biasesCopy;
  if (!biasesCopy)
  {
    if ([descriptorCopy usesBiases])
    {
      v23 = +[MLCLog framework];
      v24 = activationsCopy;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [MLCLSTMLayer initWithDescriptor:a2 inputWeights:? hiddenWeights:? peepholeWeights:? biases:? gateActivations:? outputResultActivation:?];
      }

      goto LABEL_35;
    }

    goto LABEL_26;
  }

  if ([biasesCopy count] != v19)
  {
    v30 = +[MLCLog framework];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [MLCLSTMLayer initWithDescriptor:inputWeights:hiddenWeights:peepholeWeights:biases:gateActivations:outputResultActivation:];
    }

    v26 = 0;
    goto LABEL_20;
  }

  if (([descriptorCopy usesBiases] & 1) == 0)
  {
    v23 = +[MLCLog framework];
    v24 = activationsCopy;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MLCLSTMLayer initWithDescriptor:a2 inputWeights:? hiddenWeights:? peepholeWeights:? biases:? gateActivations:? outputResultActivation:?];
    }

LABEL_35:

    v26 = 0;
    goto LABEL_21;
  }

LABEL_26:
  v24 = activationsCopy;
  if ([activationsCopy count] != 4)
  {
    v23 = +[MLCLog framework];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MLCLSTMLayer initWithDescriptor:a2 inputWeights:? hiddenWeights:? peepholeWeights:? biases:? gateActivations:? outputResultActivation:?];
    }

    goto LABEL_35;
  }

  if (peepholeWeightsCopy)
  {
    v23 = +[MLCLog framework];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MLCLSTMLayer initWithDescriptor:a2 inputWeights:? hiddenWeights:? peepholeWeights:? biases:? gateActivations:? outputResultActivation:?];
    }

    goto LABEL_35;
  }

  v59 = hiddenWeightsCopy;
  v67.receiver = self;
  v67.super_class = MLCLSTMLayer;
  v31 = [(MLCLayer *)&v67 initWithLabel:@"LSTM"];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_descriptor, descriptor);
    objc_storeStrong(&v32->_inputWeights, weights);
    objc_storeStrong(&v32->_hiddenWeights, hiddenWeights);
    peepholeWeights = v32->_peepholeWeights;
    v32->_peepholeWeights = 0;

    objc_storeStrong(&v32->_biases, biases);
    objc_storeStrong(&v32->_gateActivations, obj);
    objc_storeStrong(&v32->_outputResultActivation, activation);
    peepholeWeightsParameters = v32->_peepholeWeightsParameters;
    v35 = MEMORY[0x277CBEBF8];
    v32->_peepholeWeightsParameters = MEMORY[0x277CBEBF8];

    v36 = [v35 mutableCopy];
    v37 = [v35 mutableCopy];
    obja = [v35 mutableCopy];
    if ([v20 count])
    {
      v38 = 0;
      do
      {
        v39 = [v20 objectAtIndexedSubscript:v38];
        v40 = [MLCTensorParameter parameterWithTensor:v39];
        [v36 setObject:v40 atIndexedSubscript:v38];

        v41 = [hiddenWeightsCopy objectAtIndexedSubscript:v38];
        v42 = [MLCTensorParameter parameterWithTensor:v41];
        [v37 setObject:v42 atIndexedSubscript:v38];

        v43 = [(NSArray *)v32->_inputWeights objectAtIndexedSubscript:v38];
        [v43 setIsLayerParameter:1];

        v44 = [(NSArray *)v32->_hiddenWeights objectAtIndexedSubscript:v38];
        [v44 setIsLayerParameter:1];

        ++v38;
      }

      while (v38 < [v20 count]);
    }

    v61 = v37;
    if (biasesCopy)
    {
      v24 = activationsCopy;
      v45 = obja;
      if ([biasesCopy count])
      {
        v46 = 0;
        do
        {
          v47 = [biasesCopy objectAtIndexedSubscript:v46];
          v48 = [MLCTensorParameter parameterWithTensor:v47];
          [obja setObject:v48 atIndexedSubscript:v46];

          v49 = [(NSArray *)v32->_biases objectAtIndexedSubscript:v46];
          [v49 setIsLayerParameter:1];

          ++v46;
        }

        while (v46 < [biasesCopy count]);
      }

      v50 = [obja copy];
    }

    else
    {
      v50 = 0;
      v24 = activationsCopy;
      v45 = obja;
    }

    biasesParameters = v32->_biasesParameters;
    v32->_biasesParameters = v50;

    v52 = [v36 copy];
    inputWeightsParameters = v32->_inputWeightsParameters;
    v32->_inputWeightsParameters = v52;

    v54 = [v61 copy];
    hiddenWeightsParameters = v32->_hiddenWeightsParameters;
    v32->_hiddenWeightsParameters = v54;

    v66.receiver = v32;
    v66.super_class = MLCLSTMLayer;
    [(MLCLayer *)&v66 setIsUpdatable:1];

    v22 = biasesCopy;
  }

  selfCopy = v32;
  v26 = selfCopy;
  hiddenWeightsCopy = v59;
  v21 = peepholeWeightsCopy;
LABEL_22:

  return v26;
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v45 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v11 = [tensorsCopy count];
  if (!v11)
  {
LABEL_10:
    computeEngine = [deviceCopy computeEngine];
    descriptor = [(MLCLSTMLayer *)self descriptor];
    inputWeights = [(MLCLSTMLayer *)self inputWeights];
    hiddenWeights = [(MLCLSTMLayer *)self hiddenWeights];
    peepholeWeights = [(MLCLSTMLayer *)self peepholeWeights];
    biases = [(MLCLSTMLayer *)self biases];
    gateActivations = [(MLCLSTMLayer *)self gateActivations];
    outputResultActivation = [(MLCLSTMLayer *)self outputResultActivation];
    LOBYTE(v32) = [(MLCLayer *)self compileForInferenceOnly];
    v24 = [computeEngine lstmLayerWithDescriptor:descriptor inputWeights:inputWeights hiddenWeights:hiddenWeights peepholeWeights:peepholeWeights biasTerms:biases gateActivations:gateActivations outputResultActivation:outputResultActivation inferenceOnly:v32];

    if (v24 && [v24 count])
    {
      computeEngine2 = [deviceCopy computeEngine];
      v26 = tensorCopy;
      v27 = [computeEngine2 compileLayerDeviceOps:v24 sourceTensors:tensorsCopy resultTensor:tensorCopy];

      v36.receiver = self;
      v36.super_class = MLCLSTMLayer;
      [(MLCLayer *)&v36 bindDevice:deviceCopy deviceOps:v24];
    }

    else
    {
      v28 = +[MLCLog framework];
      v26 = tensorCopy;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [MLCBatchNormalizationLayer compileForDevice:sourceTensors:resultTensor:];
      }

      v27 = 0;
    }

    goto LABEL_19;
  }

  v12 = v11;
  if (v11 == 2)
  {
    v12 = 1;
  }

  else
  {
    if (v11 != 4)
    {
      goto LABEL_7;
    }

    v12 = 3;
  }

  v13 = [tensorsCopy objectAtIndexedSubscript:v12];
  [v13 setComputeFlags:{objc_msgSend(v13, "computeFlags") | 8}];

LABEL_7:
  v14 = 0;
  while (1)
  {
    v15 = [tensorsCopy objectAtIndexedSubscript:v14];
    descriptor2 = [v15 descriptor];
    dataType = [descriptor2 dataType];

    if (![(MLCLayer *)MLCLSTMLayer supportsDataType:dataType onDevice:deviceCopy])
    {
      break;
    }

    if (v12 == ++v14)
    {
      goto LABEL_10;
    }
  }

  v24 = +[MLCLog framework];
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v31 = NSStringFromSelector(a2);
    *buf = 138413058;
    v38 = v31;
    v39 = 2048;
    v40 = v14;
    v41 = 1024;
    v42 = dataType;
    v43 = 2112;
    v44 = deviceCopy;
    _os_log_error_impl(&dword_238C1D000, v24, OS_LOG_TYPE_ERROR, "%@: sourceTensor[%lu] uses unsupported data type = %d on a device = %@", buf, 0x26u);
  }

  v27 = 0;
  v26 = tensorCopy;
LABEL_19:

  v29 = *MEMORY[0x277D85DE8];
  return v27;
}

- (unint64_t)resultSizeFromSourceSize:(unint64_t)size dimension:(unint64_t)dimension
{
  descriptor = [(MLCLSTMLayer *)self descriptor];
  batchFirst = [descriptor batchFirst];

  if ((batchFirst & 1) == 0)
  {
    if (dimension != 2)
    {
      return size;
    }

LABEL_5:
    descriptor2 = [(MLCLSTMLayer *)self descriptor];
    hiddenSize = [descriptor2 hiddenSize];
    descriptor3 = [(MLCLSTMLayer *)self descriptor];
    size = hiddenSize << [descriptor3 isBidirectional];

    return size;
  }

  if (dimension == 1)
  {
    goto LABEL_5;
  }

  v13.receiver = self;
  v13.super_class = MLCLSTMLayer;
  return [(MLCLayer *)&v13 resultSizeFromSourceSize:size dimension:dimension];
}

- (id)resultTensorFromSources:(id)sources
{
  v105[3] = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  v5 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor = [v5 descriptor];
  shape = [descriptor shape];
  v8 = [shape count];

  if (v8 == 3)
  {
    descriptor2 = [(MLCLSTMLayer *)self descriptor];
    returnsSequences = [descriptor2 returnsSequences];

    v11 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor3 = [v11 descriptor];
    shape2 = [descriptor3 shape];
    v14 = [shape2 objectAtIndexedSubscript:2];
    unsignedIntegerValue = [v14 unsignedIntegerValue];

    unsignedIntegerValue3 = 1;
    v17 = [(MLCLSTMLayer *)self resultSizeFromSourceSize:unsignedIntegerValue dimension:1];
    v18 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor4 = [v18 descriptor];
    shape3 = [descriptor4 shape];
    v21 = [shape3 objectAtIndexedSubscript:0];
    unsignedIntegerValue2 = [v21 unsignedIntegerValue];

    if (returnsSequences)
    {
      v23 = [sourcesCopy objectAtIndexedSubscript:0];
      descriptor5 = [v23 descriptor];
      shape4 = [descriptor5 shape];
      v26 = [shape4 objectAtIndexedSubscript:1];
      unsignedIntegerValue3 = [v26 unsignedIntegerValue];
    }

    v27 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor6 = [v27 descriptor];
    variableLengthSequences = [descriptor6 variableLengthSequences];

    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue2];
    v31 = v30;
    if (variableLengthSequences)
    {
      v104[0] = v30;
      v101 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue3];
      v104[1] = v101;
      v99 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
      v104[2] = v99;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:3];
      v97 = [sourcesCopy objectAtIndexedSubscript:0];
      descriptor7 = [v97 descriptor];
      sequenceLengths = [descriptor7 sequenceLengths];
      v35 = [sourcesCopy objectAtIndexedSubscript:0];
      descriptor8 = [v35 descriptor];
      sortedSequences = [descriptor8 sortedSequences];
      [sourcesCopy objectAtIndexedSubscript:0];
      v38 = v96 = v31;
      descriptor9 = [v38 descriptor];
      v40 = v32;
      v41 = +[MLCTensorDescriptor descriptorWithShape:sequenceLengths:sortedSequences:dataType:](MLCTensorDescriptor, "descriptorWithShape:sequenceLengths:sortedSequences:dataType:", v32, sequenceLengths, sortedSequences, [descriptor9 dataType]);
    }

    else
    {
      v105[0] = v30;
      v89 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue3];
      v105[1] = v89;
      v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
      v105[2] = v90;
      v91 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:3];
      v92 = [sourcesCopy objectAtIndexedSubscript:0];
      descriptor10 = [v92 descriptor];
      v41 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v91, [descriptor10 dataType]);
    }

    v46 = [MLCTensor tensorWithDescriptor:v41];
  }

  else
  {
    v42 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor11 = [v42 descriptor];
    shape5 = [descriptor11 shape];
    v45 = [shape5 count];

    v46 = 0;
    if (v45 == 4)
    {
      descriptor12 = [(MLCLSTMLayer *)self descriptor];
      returnsSequences2 = [descriptor12 returnsSequences];

      v49 = [sourcesCopy objectAtIndexedSubscript:0];
      descriptor13 = [v49 descriptor];
      shape6 = [descriptor13 shape];
      unsignedIntegerValue5 = 1;
      v53 = [shape6 objectAtIndexedSubscript:1];
      unsignedIntegerValue4 = [v53 unsignedIntegerValue];

      v55 = [(MLCLSTMLayer *)self resultSizeFromSourceSize:unsignedIntegerValue4 dimension:1];
      if (returnsSequences2)
      {
        v56 = [sourcesCopy objectAtIndexedSubscript:0];
        descriptor14 = [v56 descriptor];
        shape7 = [descriptor14 shape];
        v59 = [shape7 objectAtIndexedSubscript:3];
        unsignedIntegerValue5 = [v59 unsignedIntegerValue];
      }

      v60 = [(MLCLSTMLayer *)self resultSizeFromSourceSize:unsignedIntegerValue5 dimension:3];
      v61 = [sourcesCopy objectAtIndexedSubscript:0];
      descriptor15 = [v61 descriptor];
      shape8 = [descriptor15 shape];
      v64 = [shape8 objectAtIndexedSubscript:2];
      unsignedIntegerValue6 = [v64 unsignedIntegerValue];

      v66 = [(MLCLSTMLayer *)self resultSizeFromSourceSize:unsignedIntegerValue6 dimension:2];
      v67 = [sourcesCopy objectAtIndexedSubscript:0];
      descriptor16 = [v67 descriptor];
      shape9 = [descriptor16 shape];
      v70 = [shape9 objectAtIndexedSubscript:0];
      unsignedIntegerValue7 = [v70 unsignedIntegerValue];

      v72 = [sourcesCopy objectAtIndexedSubscript:0];
      descriptor17 = [v72 descriptor];
      LODWORD(shape9) = [descriptor17 variableLengthSequences];

      if (shape9)
      {
        v74 = [sourcesCopy objectAtIndexedSubscript:0];
        descriptor18 = [v74 descriptor];
        sequenceLengths2 = [descriptor18 sequenceLengths];
        v77 = [sequenceLengths2 objectAtIndexedSubscript:0];
        unsignedIntegerValue8 = [v77 unsignedIntegerValue];

        v102 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue7];
        v103[0] = v102;
        v100 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v55];
        v103[1] = v100;
        v103[2] = &unk_284BA5EE8;
        v98 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue8];
        v103[3] = v98;
        v79 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:4];
        v80 = [sourcesCopy objectAtIndexedSubscript:0];
        descriptor19 = [v80 descriptor];
        sequenceLengths3 = [descriptor19 sequenceLengths];
        v83 = [sourcesCopy objectAtIndexedSubscript:0];
        descriptor20 = [v83 descriptor];
        sortedSequences2 = [descriptor20 sortedSequences];
        v86 = [sourcesCopy objectAtIndexedSubscript:0];
        descriptor21 = [v86 descriptor];
        v88 = +[MLCTensorDescriptor descriptorWithShape:sequenceLengths:sortedSequences:dataType:](MLCTensorDescriptor, "descriptorWithShape:sequenceLengths:sortedSequences:dataType:", v79, sequenceLengths3, sortedSequences2, [descriptor21 dataType]);

        v46 = [MLCTensor tensorWithDescriptor:v88];
      }

      else
      {
        v46 = [MLCTensor tensorWithWidth:v60 height:v66 featureChannelCount:v55 batchSize:unsignedIntegerValue7];
      }
    }
  }

  v94 = *MEMORY[0x277D85DE8];

  return v46;
}

- (id)resultStateTensorWithSources:(id)sources
{
  v34[4] = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  descriptor = [(MLCLSTMLayer *)self descriptor];
  layerCount = [descriptor layerCount];

  descriptor2 = [(MLCLSTMLayer *)self descriptor];
  if ([descriptor2 isBidirectional])
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = [sourcesCopy objectAtIndexedSubscript:0];

  descriptor3 = [v9 descriptor];
  shape = [descriptor3 shape];
  v12 = [shape objectAtIndexedSubscript:0];
  unsignedIntegerValue = [v12 unsignedIntegerValue];

  descriptor4 = [(MLCLSTMLayer *)self descriptor];
  hiddenSize = [descriptor4 hiddenSize];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:layerCount];
  v34[0] = v15;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v34[1] = v16;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
  v34[2] = v17;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:hiddenSize];
  v34[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  v20 = [MLCTensor tensorWithShape:v19];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:layerCount];
  v33[0] = v21;
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v33[1] = v22;
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue];
  v33[2] = v23;
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:hiddenSize];
  v33[3] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
  v26 = [MLCTensor tensorWithShape:v25];

  v32[0] = v20;
  v32[1] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v28 = [v27 copy];

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (BOOL)allocateDataForOptimizer:(id)optimizer
{
  optimizerCopy = optimizer;
  inputWeights = [(MLCLSTMLayer *)self inputWeights];
  v7 = [inputWeights count];

  if (v7)
  {
    inputWeights2 = [(MLCLSTMLayer *)self inputWeights];
    v9 = [inputWeights2 count];

    if (v9)
    {
      v10 = 0;
      do
      {
        inputWeightsParameters = [(MLCLSTMLayer *)self inputWeightsParameters];
        v12 = [inputWeightsParameters objectAtIndexedSubscript:v10];
        device = [(MLCLayer *)self device];
        [v12 allocateDataForOptimizer:optimizerCopy device:device isVector:0];

        hiddenWeightsParameters = [(MLCLSTMLayer *)self hiddenWeightsParameters];
        v15 = [hiddenWeightsParameters objectAtIndexedSubscript:v10];
        device2 = [(MLCLayer *)self device];
        [v15 allocateDataForOptimizer:optimizerCopy device:device2 isVector:0];

        ++v10;
        inputWeights3 = [(MLCLSTMLayer *)self inputWeights];
        v18 = [inputWeights3 count];
      }

      while (v10 < v18);
    }

    biases = [(MLCLSTMLayer *)self biases];

    if (biases)
    {
      biases2 = [(MLCLSTMLayer *)self biases];
      v21 = [biases2 count];

      if (v21)
      {
        v22 = 0;
        do
        {
          biasesParameters = [(MLCLSTMLayer *)self biasesParameters];
          v24 = [biasesParameters objectAtIndexedSubscript:v22];
          device3 = [(MLCLayer *)self device];
          [v24 allocateDataForOptimizer:optimizerCopy device:device3 isVector:0];

          ++v22;
          biases3 = [(MLCLSTMLayer *)self biases];
          v27 = [biases3 count];
        }

        while (v22 < v27);
      }
    }

    device4 = [(MLCLayer *)self device];
    computeEngine = [device4 computeEngine];
    deviceOps = [(MLCLayer *)self deviceOps];
    inputWeights4 = [(MLCLSTMLayer *)self inputWeights];
    hiddenWeights = [(MLCLSTMLayer *)self hiddenWeights];
    biases4 = [(MLCLSTMLayer *)self biases];
    [computeEngine setLSTMLayerOptimizerDataForDeviceOps:deviceOps inputWeights:inputWeights4 hiddenWeights:hiddenWeights biasTerms:biases4];
  }

  else
  {
    v34 = +[MLCLog framework];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [MLCLSTMLayer allocateDataForOptimizer:a2];
    }
  }

  return v7 != 0;
}

- (void)allocateGradientsForParameters
{
  inputWeights = [(MLCLSTMLayer *)self inputWeights];
  v11 = [inputWeights mutableCopy];

  hiddenWeights = [(MLCLSTMLayer *)self hiddenWeights];
  [v11 addObjectsFromArray:hiddenWeights];

  descriptor = [(MLCLSTMLayer *)self descriptor];
  usesBiases = [descriptor usesBiases];

  if (usesBiases)
  {
    biases = [(MLCLSTMLayer *)self biases];
    [v11 addObjectsFromArray:biases];
  }

  device = [(MLCLayer *)self device];
  computeEngine = [device computeEngine];
  deviceOps = [(MLCLayer *)self deviceOps];
  [computeEngine allocateParameterGradientsForDeviceOps:deviceOps parameters:v11];
}

- (BOOL)isSupportedShapeForTensorSources:(id)sources
{
  sourcesCopy = sources;
  v6 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor = [v6 descriptor];
  shape = [descriptor shape];
  v68 = sourcesCopy;
  if ([shape count] == 3)
  {
  }

  else
  {
    v9 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor2 = [v9 descriptor];
    shape2 = [descriptor2 shape];
    v12 = [shape2 count];

    sourcesCopy = v68;
    if (v12 != 4)
    {
LABEL_35:
      v52 = 0;
      goto LABEL_37;
    }
  }

  v57 = a2;
  if ([sourcesCopy count] == 3 || objc_msgSend(sourcesCopy, "count") == 4)
  {
    descriptor3 = [(MLCLSTMLayer *)self descriptor];
    v14 = 1;
    if ([descriptor3 isBidirectional])
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    v73 = v15;

    descriptor4 = [(MLCLSTMLayer *)self descriptor];
    layerCount = [descriptor4 layerCount];

    descriptor5 = [(MLCLSTMLayer *)self descriptor];
    batchFirst = [descriptor5 batchFirst];
    v19 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor6 = [v19 descriptor];
    shape3 = [descriptor6 shape];
    v22 = [shape3 objectAtIndexedSubscript:batchFirst ^ 1u];
    unsignedIntegerValue = [v22 unsignedIntegerValue];

    sourcesCopy = v68;
    descriptor7 = [(MLCLSTMLayer *)self descriptor];
    hiddenSize = [descriptor7 hiddenSize];

    while (1)
    {
      v24 = [sourcesCopy objectAtIndexedSubscript:v14];
      descriptor8 = [v24 descriptor];
      shape4 = [descriptor8 shape];
      if ([shape4 count] == 4)
      {
        goto LABEL_16;
      }

      v27 = [sourcesCopy objectAtIndexedSubscript:v14];
      descriptor9 = [v27 descriptor];
      shape5 = [descriptor9 shape];
      v30 = [shape5 objectAtIndexedSubscript:0];
      if ([v30 unsignedIntegerValue] != v73)
      {
        break;
      }

      v72 = [sourcesCopy objectAtIndexedSubscript:v14];
      descriptor10 = [v72 descriptor];
      shape6 = [descriptor10 shape];
      v69 = [shape6 objectAtIndexedSubscript:1];
      if ([v69 unsignedIntegerValue] == layerCount)
      {
        v66 = [sourcesCopy objectAtIndexedSubscript:v14];
        descriptor11 = [v66 descriptor];
        shape7 = [descriptor11 shape];
        v63 = [shape7 objectAtIndexedSubscript:2];
        if ([v63 unsignedIntegerValue] == unsignedIntegerValue)
        {
          v61 = [sourcesCopy objectAtIndexedSubscript:v14];
          descriptor12 = [v61 descriptor];
          shape8 = [descriptor12 shape];
          v31 = [shape8 objectAtIndexedSubscript:3];
          v32 = [v31 unsignedIntegerValue] == hiddenSize;

          sourcesCopy = v68;
        }

        else
        {
          v32 = 0;
        }
      }

      else
      {
        v32 = 0;
      }

      if (v32)
      {
        goto LABEL_35;
      }

LABEL_21:
      if (++v14 == 3)
      {
        goto LABEL_22;
      }
    }

LABEL_16:
    goto LABEL_21;
  }

LABEL_22:
  if ([sourcesCopy count] != 2 && objc_msgSend(sourcesCopy, "count") != 4)
  {
    v52 = 1;
    goto LABEL_37;
  }

  if ([sourcesCopy count] == 2)
  {
    v33 = 1;
  }

  else
  {
    v33 = 3;
  }

  v34 = [sourcesCopy objectAtIndexedSubscript:v33];
  [v34 setSkipWritingToDevice:1];
  descriptor13 = [v34 descriptor];
  dataType = [descriptor13 dataType];

  if (dataType != 7)
  {
    v55 = +[MLCLog framework];
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      [MLCLSTMLayer isSupportedShapeForTensorSources:v57];
    }

    goto LABEL_35;
  }

  v37 = [MEMORY[0x277CBEBF8] mutableCopy];
  descriptor14 = [v34 descriptor];
  tensorAllocationSizeInBytes = [descriptor14 tensorAllocationSizeInBytes];
  descriptor15 = [v34 descriptor];
  v41 = +[MLCTensorDescriptor elementByteCount:](MLCTensorDescriptor, "elementByteCount:", [descriptor15 dataType]);

  data = [v34 data];
  bytes = [data bytes];

  if (v41 <= tensorAllocationSizeInBytes)
  {
    v44 = 0;
    v45 = tensorAllocationSizeInBytes / v41;
    do
    {
      v46 = [MEMORY[0x277CCABB0] numberWithInt:*(bytes + 4 * v44)];
      [v37 setObject:v46 atIndexedSubscript:v44];

      ++v44;
    }

    while (v44 < v45);
  }

  v47 = [v68 objectAtIndexedSubscript:0];
  descriptor16 = [v47 descriptor];
  shape9 = [descriptor16 shape];
  v50 = [v68 objectAtIndexedSubscript:0];
  descriptor17 = [v50 descriptor];
  v52 = 1;
  v53 = +[MLCTensorDescriptor descriptorWithShape:sequenceLengths:sortedSequences:dataType:](MLCTensorDescriptor, "descriptorWithShape:sequenceLengths:sortedSequences:dataType:", shape9, v37, 1, [descriptor17 dataType]);
  v54 = [v68 objectAtIndexedSubscript:0];
  [v54 setDescriptor:v53];

LABEL_37:
  return v52;
}

- (void)linkAssociatedTensors
{
  v48 = *MEMORY[0x277D85DE8];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  inputWeights = [(MLCLSTMLayer *)self inputWeights];
  v4 = [inputWeights countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v41;
    do
    {
      v7 = 0;
      do
      {
        if (*v41 != v6)
        {
          objc_enumerationMutation(inputWeights);
        }

        childLayers = [*(*(&v40 + 1) + 8 * v7) childLayers];
        [childLayers addObject:self];

        ++v7;
      }

      while (v5 != v7);
      v5 = [inputWeights countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v5);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  hiddenWeights = [(MLCLSTMLayer *)self hiddenWeights];
  v10 = [hiddenWeights countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    do
    {
      v13 = 0;
      do
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(hiddenWeights);
        }

        childLayers2 = [*(*(&v36 + 1) + 8 * v13) childLayers];
        [childLayers2 addObject:self];

        ++v13;
      }

      while (v11 != v13);
      v11 = [hiddenWeights countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v11);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  peepholeWeights = [(MLCLSTMLayer *)self peepholeWeights];
  v16 = [peepholeWeights countByEnumeratingWithState:&v32 objects:v45 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v33;
    do
    {
      v19 = 0;
      do
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(peepholeWeights);
        }

        childLayers3 = [*(*(&v32 + 1) + 8 * v19) childLayers];
        [childLayers3 addObject:self];

        ++v19;
      }

      while (v17 != v19);
      v17 = [peepholeWeights countByEnumeratingWithState:&v32 objects:v45 count:16];
    }

    while (v17);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  biases = [(MLCLSTMLayer *)self biases];
  v22 = [biases countByEnumeratingWithState:&v28 objects:v44 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v29;
    do
    {
      v25 = 0;
      do
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(biases);
        }

        childLayers4 = [*(*(&v28 + 1) + 8 * v25) childLayers];
        [childLayers4 addObject:self];

        ++v25;
      }

      while (v23 != v25);
      v23 = [biases countByEnumeratingWithState:&v28 objects:v44 count:16];
    }

    while (v23);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)unlinkAssociatedTensors
{
  v48 = *MEMORY[0x277D85DE8];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  inputWeights = [(MLCLSTMLayer *)self inputWeights];
  v4 = [inputWeights countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v41;
    do
    {
      v7 = 0;
      do
      {
        if (*v41 != v6)
        {
          objc_enumerationMutation(inputWeights);
        }

        childLayers = [*(*(&v40 + 1) + 8 * v7) childLayers];
        [childLayers removeObject:self];

        ++v7;
      }

      while (v5 != v7);
      v5 = [inputWeights countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v5);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  hiddenWeights = [(MLCLSTMLayer *)self hiddenWeights];
  v10 = [hiddenWeights countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    do
    {
      v13 = 0;
      do
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(hiddenWeights);
        }

        childLayers2 = [*(*(&v36 + 1) + 8 * v13) childLayers];
        [childLayers2 removeObject:self];

        ++v13;
      }

      while (v11 != v13);
      v11 = [hiddenWeights countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v11);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  peepholeWeights = [(MLCLSTMLayer *)self peepholeWeights];
  v16 = [peepholeWeights countByEnumeratingWithState:&v32 objects:v45 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v33;
    do
    {
      v19 = 0;
      do
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(peepholeWeights);
        }

        childLayers3 = [*(*(&v32 + 1) + 8 * v19) childLayers];
        [childLayers3 removeObject:self];

        ++v19;
      }

      while (v17 != v19);
      v17 = [peepholeWeights countByEnumeratingWithState:&v32 objects:v45 count:16];
    }

    while (v17);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  biases = [(MLCLSTMLayer *)self biases];
  v22 = [biases countByEnumeratingWithState:&v28 objects:v44 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v29;
    do
    {
      v25 = 0;
      do
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(biases);
        }

        childLayers4 = [*(*(&v28 + 1) + 8 * v25) childLayers];
        [childLayers4 removeObject:self];

        ++v25;
      }

      while (v23 != v25);
      v23 = [biases countByEnumeratingWithState:&v28 objects:v44 count:16];
    }

    while (v23);
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  descriptor = [(MLCLSTMLayer *)self descriptor];
  conditionalTreeNode = [(MLCLayer *)self conditionalTreeNode];
  resultTensors = [(MLCLayer *)self resultTensors];
  v9 = [v3 stringWithFormat:@"%@: { lstmDescriptor=%@ : conditionalTreeNode=%@ : resultTensor=%@ }", v5, descriptor, conditionalTreeNode, resultTensors];

  return v9;
}

- (id)summarizedDOTDescription
{
  v25 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v23 = NSStringFromClass(v3);
  layerID = [(MLCLayer *)self layerID];
  descriptor = [(MLCLSTMLayer *)self descriptor];
  inputSize = [descriptor inputSize];
  descriptor2 = [(MLCLSTMLayer *)self descriptor];
  hiddenSize = [descriptor2 hiddenSize];
  descriptor3 = [(MLCLSTMLayer *)self descriptor];
  layerCount = [descriptor3 layerCount];
  descriptor4 = [(MLCLSTMLayer *)self descriptor];
  usesBiases = [descriptor4 usesBiases];
  descriptor5 = [(MLCLSTMLayer *)self descriptor];
  batchFirst = [descriptor5 batchFirst];
  descriptor6 = [(MLCLSTMLayer *)self descriptor];
  isBidirectional = [descriptor6 isBidirectional];
  descriptor7 = [(MLCLSTMLayer *)self descriptor];
  returnsSequences = [descriptor7 returnsSequences];
  descriptor8 = [(MLCLSTMLayer *)self descriptor];
  [descriptor8 dropout];
  v13 = v12;
  descriptor9 = [(MLCLSTMLayer *)self descriptor];
  v15 = MLCLSTMResultModeDebugDescription([descriptor9 resultMode]);
  v16 = [v25 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Input Size: %lu     Hidden Size: %lu     Layer Count: %lu<BR />Uses Biases: %hhd    Batch First: %hhd    Bidirectional: %hhd<BR />Returns Sequences: %hhd                   Dropout: %.03f<BR />Result Mode: %@</FONT>>", v23, layerID, inputSize, hiddenSize, layerCount, usesBiases, batchFirst, isBidirectional, returnsSequences, *&v13, v15];

  return v16;
}

- (unint64_t)parametersCount
{
  inputWeightsParameters = [(MLCLSTMLayer *)self inputWeightsParameters];
  v4 = [inputWeightsParameters count];

  hiddenWeightsParameters = [(MLCLSTMLayer *)self hiddenWeightsParameters];
  v6 = [hiddenWeightsParameters count] + v4;

  descriptor = [(MLCLSTMLayer *)self descriptor];
  LODWORD(hiddenWeightsParameters) = [descriptor usesBiases];

  if (hiddenWeightsParameters)
  {
    return v6 + 4;
  }

  else
  {
    return v6;
  }
}

- (void)initWithDescriptor:inputWeights:hiddenWeights:peepholeWeights:biases:gateActivations:outputResultActivation:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDescriptor:inputWeights:hiddenWeights:peepholeWeights:biases:gateActivations:outputResultActivation:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDescriptor:inputWeights:hiddenWeights:peepholeWeights:biases:gateActivations:outputResultActivation:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDescriptor:inputWeights:hiddenWeights:peepholeWeights:biases:gateActivations:outputResultActivation:.cold.4()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDescriptor:(const char *)a1 inputWeights:hiddenWeights:peepholeWeights:biases:gateActivations:outputResultActivation:.cold.5(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDescriptor:(const char *)a1 inputWeights:hiddenWeights:peepholeWeights:biases:gateActivations:outputResultActivation:.cold.6(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDescriptor:(const char *)a1 inputWeights:hiddenWeights:peepholeWeights:biases:gateActivations:outputResultActivation:.cold.7(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDescriptor:(const char *)a1 inputWeights:hiddenWeights:peepholeWeights:biases:gateActivations:outputResultActivation:.cold.8(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)allocateDataForOptimizer:(const char *)a1 .cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)isSupportedShapeForTensorSources:(const char *)a1 .cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end