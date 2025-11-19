@interface MLCLSTMLayer
+ (MLCLSTMLayer)layerWithDescriptor:(MLCLSTMDescriptor *)descriptor inputWeights:(NSArray *)inputWeights hiddenWeights:(NSArray *)hiddenWeights peepholeWeights:(NSArray *)peepholeWeights biases:(NSArray *)biases;
+ (MLCLSTMLayer)layerWithDescriptor:(MLCLSTMDescriptor *)descriptor inputWeights:(NSArray *)inputWeights hiddenWeights:(NSArray *)hiddenWeights peepholeWeights:(NSArray *)peepholeWeights biases:(NSArray *)biases gateActivations:(NSArray *)gateActivations outputResultActivation:(MLCActivationDescriptor *)outputResultActivation;
- (BOOL)allocateDataForOptimizer:(id)a3;
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (BOOL)isSupportedShapeForTensorSources:(id)a3;
- (MLCLSTMLayer)initWithDescriptor:(id)a3 inputWeights:(id)a4 hiddenWeights:(id)a5 peepholeWeights:(id)a6 biases:(id)a7 gateActivations:(id)a8 outputResultActivation:(id)a9;
- (id)description;
- (id)resultStateTensorWithSources:(id)a3;
- (id)resultTensorFromSources:(id)a3;
- (id)summarizedDOTDescription;
- (unint64_t)parametersCount;
- (unint64_t)resultSizeFromSourceSize:(unint64_t)a3 dimension:(unint64_t)a4;
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
  v20 = [[a1 alloc] initWithDescriptor:v16 inputWeights:v15 hiddenWeights:v14 peepholeWeights:v13 biases:v12 gateActivations:v19 outputResultActivation:v18];

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
  v23 = [[a1 alloc] initWithDescriptor:v22 inputWeights:v21 hiddenWeights:v20 peepholeWeights:v19 biases:v18 gateActivations:v17 outputResultActivation:v16];

  return v23;
}

- (MLCLSTMLayer)initWithDescriptor:(id)a3 inputWeights:(id)a4 hiddenWeights:(id)a5 peepholeWeights:(id)a6 biases:(id)a7 gateActivations:(id)a8 outputResultActivation:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v64 = a6;
  v65 = a7;
  obj = a8;
  v63 = a8;
  v62 = a9;
  v18 = [v15 layerCount];
  v19 = 4 * (v18 << [v15 isBidirectional]);
  if ([v16 count] != v19)
  {
    v25 = +[MLCLog framework];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [MLCLSTMLayer initWithDescriptor:inputWeights:hiddenWeights:peepholeWeights:biases:gateActivations:outputResultActivation:];
    }

    v26 = 0;
    v20 = v16;
    v21 = v64;
    goto LABEL_19;
  }

  if ([v17 count] != v19)
  {
    v27 = +[MLCLog framework];
    v20 = v16;
    v21 = v64;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [MLCLSTMLayer initWithDescriptor:inputWeights:hiddenWeights:peepholeWeights:biases:gateActivations:outputResultActivation:];
    }

    goto LABEL_18;
  }

  v20 = v16;
  v21 = v64;
  if (v64 && [v64 count] != v19)
  {
    v27 = +[MLCLog framework];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [MLCLSTMLayer initWithDescriptor:inputWeights:hiddenWeights:peepholeWeights:biases:gateActivations:outputResultActivation:];
    }

LABEL_18:

    v26 = 0;
LABEL_19:
    v22 = v65;
LABEL_20:
    v24 = v63;
LABEL_21:
    v28 = self;
    goto LABEL_22;
  }

  v22 = v65;
  if (!v65)
  {
    if ([v15 usesBiases])
    {
      v23 = +[MLCLog framework];
      v24 = v63;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [MLCLSTMLayer initWithDescriptor:a2 inputWeights:? hiddenWeights:? peepholeWeights:? biases:? gateActivations:? outputResultActivation:?];
      }

      goto LABEL_35;
    }

    goto LABEL_26;
  }

  if ([v65 count] != v19)
  {
    v30 = +[MLCLog framework];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [MLCLSTMLayer initWithDescriptor:inputWeights:hiddenWeights:peepholeWeights:biases:gateActivations:outputResultActivation:];
    }

    v26 = 0;
    goto LABEL_20;
  }

  if (([v15 usesBiases] & 1) == 0)
  {
    v23 = +[MLCLog framework];
    v24 = v63;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MLCLSTMLayer initWithDescriptor:a2 inputWeights:? hiddenWeights:? peepholeWeights:? biases:? gateActivations:? outputResultActivation:?];
    }

LABEL_35:

    v26 = 0;
    goto LABEL_21;
  }

LABEL_26:
  v24 = v63;
  if ([v63 count] != 4)
  {
    v23 = +[MLCLog framework];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MLCLSTMLayer initWithDescriptor:a2 inputWeights:? hiddenWeights:? peepholeWeights:? biases:? gateActivations:? outputResultActivation:?];
    }

    goto LABEL_35;
  }

  if (v64)
  {
    v23 = +[MLCLog framework];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MLCLSTMLayer initWithDescriptor:a2 inputWeights:? hiddenWeights:? peepholeWeights:? biases:? gateActivations:? outputResultActivation:?];
    }

    goto LABEL_35;
  }

  v59 = v17;
  v67.receiver = self;
  v67.super_class = MLCLSTMLayer;
  v31 = [(MLCLayer *)&v67 initWithLabel:@"LSTM"];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_descriptor, a3);
    objc_storeStrong(&v32->_inputWeights, a4);
    objc_storeStrong(&v32->_hiddenWeights, a5);
    peepholeWeights = v32->_peepholeWeights;
    v32->_peepholeWeights = 0;

    objc_storeStrong(&v32->_biases, a7);
    objc_storeStrong(&v32->_gateActivations, obj);
    objc_storeStrong(&v32->_outputResultActivation, a9);
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

        v41 = [v17 objectAtIndexedSubscript:v38];
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
    if (v65)
    {
      v24 = v63;
      v45 = obja;
      if ([v65 count])
      {
        v46 = 0;
        do
        {
          v47 = [v65 objectAtIndexedSubscript:v46];
          v48 = [MLCTensorParameter parameterWithTensor:v47];
          [obja setObject:v48 atIndexedSubscript:v46];

          v49 = [(NSArray *)v32->_biases objectAtIndexedSubscript:v46];
          [v49 setIsLayerParameter:1];

          ++v46;
        }

        while (v46 < [v65 count]);
      }

      v50 = [obja copy];
    }

    else
    {
      v50 = 0;
      v24 = v63;
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

    v22 = v65;
  }

  v28 = v32;
  v26 = v28;
  v17 = v59;
  v21 = v64;
LABEL_22:

  return v26;
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v45 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v35 = a5;
  v11 = [v10 count];
  if (!v11)
  {
LABEL_10:
    v34 = [v9 computeEngine];
    v18 = [(MLCLSTMLayer *)self descriptor];
    v19 = [(MLCLSTMLayer *)self inputWeights];
    v20 = [(MLCLSTMLayer *)self hiddenWeights];
    v33 = [(MLCLSTMLayer *)self peepholeWeights];
    v21 = [(MLCLSTMLayer *)self biases];
    v22 = [(MLCLSTMLayer *)self gateActivations];
    v23 = [(MLCLSTMLayer *)self outputResultActivation];
    LOBYTE(v32) = [(MLCLayer *)self compileForInferenceOnly];
    v24 = [v34 lstmLayerWithDescriptor:v18 inputWeights:v19 hiddenWeights:v20 peepholeWeights:v33 biasTerms:v21 gateActivations:v22 outputResultActivation:v23 inferenceOnly:v32];

    if (v24 && [v24 count])
    {
      v25 = [v9 computeEngine];
      v26 = v35;
      v27 = [v25 compileLayerDeviceOps:v24 sourceTensors:v10 resultTensor:v35];

      v36.receiver = self;
      v36.super_class = MLCLSTMLayer;
      [(MLCLayer *)&v36 bindDevice:v9 deviceOps:v24];
    }

    else
    {
      v28 = +[MLCLog framework];
      v26 = v35;
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

  v13 = [v10 objectAtIndexedSubscript:v12];
  [v13 setComputeFlags:{objc_msgSend(v13, "computeFlags") | 8}];

LABEL_7:
  v14 = 0;
  while (1)
  {
    v15 = [v10 objectAtIndexedSubscript:v14];
    v16 = [v15 descriptor];
    v17 = [v16 dataType];

    if (![(MLCLayer *)MLCLSTMLayer supportsDataType:v17 onDevice:v9])
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
    v42 = v17;
    v43 = 2112;
    v44 = v9;
    _os_log_error_impl(&dword_238C1D000, v24, OS_LOG_TYPE_ERROR, "%@: sourceTensor[%lu] uses unsupported data type = %d on a device = %@", buf, 0x26u);
  }

  v27 = 0;
  v26 = v35;
LABEL_19:

  v29 = *MEMORY[0x277D85DE8];
  return v27;
}

- (unint64_t)resultSizeFromSourceSize:(unint64_t)a3 dimension:(unint64_t)a4
{
  v7 = [(MLCLSTMLayer *)self descriptor];
  v8 = [v7 batchFirst];

  if ((v8 & 1) == 0)
  {
    if (a4 != 2)
    {
      return a3;
    }

LABEL_5:
    v9 = [(MLCLSTMLayer *)self descriptor];
    v10 = [v9 hiddenSize];
    v11 = [(MLCLSTMLayer *)self descriptor];
    a3 = v10 << [v11 isBidirectional];

    return a3;
  }

  if (a4 == 1)
  {
    goto LABEL_5;
  }

  v13.receiver = self;
  v13.super_class = MLCLSTMLayer;
  return [(MLCLayer *)&v13 resultSizeFromSourceSize:a3 dimension:a4];
}

- (id)resultTensorFromSources:(id)a3
{
  v105[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v5 descriptor];
  v7 = [v6 shape];
  v8 = [v7 count];

  if (v8 == 3)
  {
    v9 = [(MLCLSTMLayer *)self descriptor];
    v10 = [v9 returnsSequences];

    v11 = [v4 objectAtIndexedSubscript:0];
    v12 = [v11 descriptor];
    v13 = [v12 shape];
    v14 = [v13 objectAtIndexedSubscript:2];
    v15 = [v14 unsignedIntegerValue];

    v16 = 1;
    v17 = [(MLCLSTMLayer *)self resultSizeFromSourceSize:v15 dimension:1];
    v18 = [v4 objectAtIndexedSubscript:0];
    v19 = [v18 descriptor];
    v20 = [v19 shape];
    v21 = [v20 objectAtIndexedSubscript:0];
    v22 = [v21 unsignedIntegerValue];

    if (v10)
    {
      v23 = [v4 objectAtIndexedSubscript:0];
      v24 = [v23 descriptor];
      v25 = [v24 shape];
      v26 = [v25 objectAtIndexedSubscript:1];
      v16 = [v26 unsignedIntegerValue];
    }

    v27 = [v4 objectAtIndexedSubscript:0];
    v28 = [v27 descriptor];
    v29 = [v28 variableLengthSequences];

    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
    v31 = v30;
    if (v29)
    {
      v104[0] = v30;
      v101 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
      v104[1] = v101;
      v99 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
      v104[2] = v99;
      v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:3];
      v97 = [v4 objectAtIndexedSubscript:0];
      v33 = [v97 descriptor];
      v34 = [v33 sequenceLengths];
      v35 = [v4 objectAtIndexedSubscript:0];
      v36 = [v35 descriptor];
      v37 = [v36 sortedSequences];
      [v4 objectAtIndexedSubscript:0];
      v38 = v96 = v31;
      v39 = [v38 descriptor];
      v40 = v32;
      v41 = +[MLCTensorDescriptor descriptorWithShape:sequenceLengths:sortedSequences:dataType:](MLCTensorDescriptor, "descriptorWithShape:sequenceLengths:sortedSequences:dataType:", v32, v34, v37, [v39 dataType]);
    }

    else
    {
      v105[0] = v30;
      v89 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
      v105[1] = v89;
      v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
      v105[2] = v90;
      v91 = [MEMORY[0x277CBEA60] arrayWithObjects:v105 count:3];
      v92 = [v4 objectAtIndexedSubscript:0];
      v93 = [v92 descriptor];
      v41 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v91, [v93 dataType]);
    }

    v46 = [MLCTensor tensorWithDescriptor:v41];
  }

  else
  {
    v42 = [v4 objectAtIndexedSubscript:0];
    v43 = [v42 descriptor];
    v44 = [v43 shape];
    v45 = [v44 count];

    v46 = 0;
    if (v45 == 4)
    {
      v47 = [(MLCLSTMLayer *)self descriptor];
      v48 = [v47 returnsSequences];

      v49 = [v4 objectAtIndexedSubscript:0];
      v50 = [v49 descriptor];
      v51 = [v50 shape];
      v52 = 1;
      v53 = [v51 objectAtIndexedSubscript:1];
      v54 = [v53 unsignedIntegerValue];

      v55 = [(MLCLSTMLayer *)self resultSizeFromSourceSize:v54 dimension:1];
      if (v48)
      {
        v56 = [v4 objectAtIndexedSubscript:0];
        v57 = [v56 descriptor];
        v58 = [v57 shape];
        v59 = [v58 objectAtIndexedSubscript:3];
        v52 = [v59 unsignedIntegerValue];
      }

      v60 = [(MLCLSTMLayer *)self resultSizeFromSourceSize:v52 dimension:3];
      v61 = [v4 objectAtIndexedSubscript:0];
      v62 = [v61 descriptor];
      v63 = [v62 shape];
      v64 = [v63 objectAtIndexedSubscript:2];
      v65 = [v64 unsignedIntegerValue];

      v66 = [(MLCLSTMLayer *)self resultSizeFromSourceSize:v65 dimension:2];
      v67 = [v4 objectAtIndexedSubscript:0];
      v68 = [v67 descriptor];
      v69 = [v68 shape];
      v70 = [v69 objectAtIndexedSubscript:0];
      v71 = [v70 unsignedIntegerValue];

      v72 = [v4 objectAtIndexedSubscript:0];
      v73 = [v72 descriptor];
      LODWORD(v69) = [v73 variableLengthSequences];

      if (v69)
      {
        v74 = [v4 objectAtIndexedSubscript:0];
        v75 = [v74 descriptor];
        v76 = [v75 sequenceLengths];
        v77 = [v76 objectAtIndexedSubscript:0];
        v78 = [v77 unsignedIntegerValue];

        v102 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v71];
        v103[0] = v102;
        v100 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v55];
        v103[1] = v100;
        v103[2] = &unk_284BA5EE8;
        v98 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v78];
        v103[3] = v98;
        v79 = [MEMORY[0x277CBEA60] arrayWithObjects:v103 count:4];
        v80 = [v4 objectAtIndexedSubscript:0];
        v81 = [v80 descriptor];
        v82 = [v81 sequenceLengths];
        v83 = [v4 objectAtIndexedSubscript:0];
        v84 = [v83 descriptor];
        v85 = [v84 sortedSequences];
        v86 = [v4 objectAtIndexedSubscript:0];
        v87 = [v86 descriptor];
        v88 = +[MLCTensorDescriptor descriptorWithShape:sequenceLengths:sortedSequences:dataType:](MLCTensorDescriptor, "descriptorWithShape:sequenceLengths:sortedSequences:dataType:", v79, v82, v85, [v87 dataType]);

        v46 = [MLCTensor tensorWithDescriptor:v88];
      }

      else
      {
        v46 = [MLCTensor tensorWithWidth:v60 height:v66 featureChannelCount:v55 batchSize:v71];
      }
    }
  }

  v94 = *MEMORY[0x277D85DE8];

  return v46;
}

- (id)resultStateTensorWithSources:(id)a3
{
  v34[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MLCLSTMLayer *)self descriptor];
  v6 = [v5 layerCount];

  v7 = [(MLCLSTMLayer *)self descriptor];
  if ([v7 isBidirectional])
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = [v4 objectAtIndexedSubscript:0];

  v10 = [v9 descriptor];
  v11 = [v10 shape];
  v12 = [v11 objectAtIndexedSubscript:0];
  v13 = [v12 unsignedIntegerValue];

  v14 = [(MLCLSTMLayer *)self descriptor];
  v31 = [v14 hiddenSize];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  v34[0] = v15;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v34[1] = v16;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
  v34[2] = v17;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31];
  v34[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:4];
  v20 = [MLCTensor tensorWithShape:v19];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  v33[0] = v21;
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v33[1] = v22;
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
  v33[2] = v23;
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31];
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

- (BOOL)allocateDataForOptimizer:(id)a3
{
  v5 = a3;
  v6 = [(MLCLSTMLayer *)self inputWeights];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(MLCLSTMLayer *)self inputWeights];
    v9 = [v8 count];

    if (v9)
    {
      v10 = 0;
      do
      {
        v11 = [(MLCLSTMLayer *)self inputWeightsParameters];
        v12 = [v11 objectAtIndexedSubscript:v10];
        v13 = [(MLCLayer *)self device];
        [v12 allocateDataForOptimizer:v5 device:v13 isVector:0];

        v14 = [(MLCLSTMLayer *)self hiddenWeightsParameters];
        v15 = [v14 objectAtIndexedSubscript:v10];
        v16 = [(MLCLayer *)self device];
        [v15 allocateDataForOptimizer:v5 device:v16 isVector:0];

        ++v10;
        v17 = [(MLCLSTMLayer *)self inputWeights];
        v18 = [v17 count];
      }

      while (v10 < v18);
    }

    v19 = [(MLCLSTMLayer *)self biases];

    if (v19)
    {
      v20 = [(MLCLSTMLayer *)self biases];
      v21 = [v20 count];

      if (v21)
      {
        v22 = 0;
        do
        {
          v23 = [(MLCLSTMLayer *)self biasesParameters];
          v24 = [v23 objectAtIndexedSubscript:v22];
          v25 = [(MLCLayer *)self device];
          [v24 allocateDataForOptimizer:v5 device:v25 isVector:0];

          ++v22;
          v26 = [(MLCLSTMLayer *)self biases];
          v27 = [v26 count];
        }

        while (v22 < v27);
      }
    }

    v28 = [(MLCLayer *)self device];
    v29 = [v28 computeEngine];
    v30 = [(MLCLayer *)self deviceOps];
    v31 = [(MLCLSTMLayer *)self inputWeights];
    v32 = [(MLCLSTMLayer *)self hiddenWeights];
    v33 = [(MLCLSTMLayer *)self biases];
    [v29 setLSTMLayerOptimizerDataForDeviceOps:v30 inputWeights:v31 hiddenWeights:v32 biasTerms:v33];
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
  v3 = [(MLCLSTMLayer *)self inputWeights];
  v11 = [v3 mutableCopy];

  v4 = [(MLCLSTMLayer *)self hiddenWeights];
  [v11 addObjectsFromArray:v4];

  v5 = [(MLCLSTMLayer *)self descriptor];
  v6 = [v5 usesBiases];

  if (v6)
  {
    v7 = [(MLCLSTMLayer *)self biases];
    [v11 addObjectsFromArray:v7];
  }

  v8 = [(MLCLayer *)self device];
  v9 = [v8 computeEngine];
  v10 = [(MLCLayer *)self deviceOps];
  [v9 allocateParameterGradientsForDeviceOps:v10 parameters:v11];
}

- (BOOL)isSupportedShapeForTensorSources:(id)a3
{
  v5 = a3;
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 descriptor];
  v8 = [v7 shape];
  v68 = v5;
  if ([v8 count] == 3)
  {
  }

  else
  {
    v9 = [v5 objectAtIndexedSubscript:0];
    v10 = [v9 descriptor];
    v11 = [v10 shape];
    v12 = [v11 count];

    v5 = v68;
    if (v12 != 4)
    {
LABEL_35:
      v52 = 0;
      goto LABEL_37;
    }
  }

  v57 = a2;
  if ([v5 count] == 3 || objc_msgSend(v5, "count") == 4)
  {
    v13 = [(MLCLSTMLayer *)self descriptor];
    v14 = 1;
    if ([v13 isBidirectional])
    {
      v15 = 2;
    }

    else
    {
      v15 = 1;
    }

    v73 = v15;

    v16 = [(MLCLSTMLayer *)self descriptor];
    v67 = [v16 layerCount];

    v17 = [(MLCLSTMLayer *)self descriptor];
    v18 = [v17 batchFirst];
    v19 = [v5 objectAtIndexedSubscript:0];
    v20 = [v19 descriptor];
    v21 = [v20 shape];
    v22 = [v21 objectAtIndexedSubscript:v18 ^ 1u];
    v62 = [v22 unsignedIntegerValue];

    v5 = v68;
    v23 = [(MLCLSTMLayer *)self descriptor];
    v58 = [v23 hiddenSize];

    while (1)
    {
      v24 = [v5 objectAtIndexedSubscript:v14];
      v25 = [v24 descriptor];
      v26 = [v25 shape];
      if ([v26 count] == 4)
      {
        goto LABEL_16;
      }

      v27 = [v5 objectAtIndexedSubscript:v14];
      v28 = [v27 descriptor];
      v29 = [v28 shape];
      v30 = [v29 objectAtIndexedSubscript:0];
      if ([v30 unsignedIntegerValue] != v73)
      {
        break;
      }

      v72 = [v5 objectAtIndexedSubscript:v14];
      v71 = [v72 descriptor];
      v70 = [v71 shape];
      v69 = [v70 objectAtIndexedSubscript:1];
      if ([v69 unsignedIntegerValue] == v67)
      {
        v66 = [v5 objectAtIndexedSubscript:v14];
        v65 = [v66 descriptor];
        v64 = [v65 shape];
        v63 = [v64 objectAtIndexedSubscript:2];
        if ([v63 unsignedIntegerValue] == v62)
        {
          v61 = [v5 objectAtIndexedSubscript:v14];
          v60 = [v61 descriptor];
          v59 = [v60 shape];
          v31 = [v59 objectAtIndexedSubscript:3];
          v32 = [v31 unsignedIntegerValue] == v58;

          v5 = v68;
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
  if ([v5 count] != 2 && objc_msgSend(v5, "count") != 4)
  {
    v52 = 1;
    goto LABEL_37;
  }

  if ([v5 count] == 2)
  {
    v33 = 1;
  }

  else
  {
    v33 = 3;
  }

  v34 = [v5 objectAtIndexedSubscript:v33];
  [v34 setSkipWritingToDevice:1];
  v35 = [v34 descriptor];
  v36 = [v35 dataType];

  if (v36 != 7)
  {
    v55 = +[MLCLog framework];
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      [MLCLSTMLayer isSupportedShapeForTensorSources:v57];
    }

    goto LABEL_35;
  }

  v37 = [MEMORY[0x277CBEBF8] mutableCopy];
  v38 = [v34 descriptor];
  v39 = [v38 tensorAllocationSizeInBytes];
  v40 = [v34 descriptor];
  v41 = +[MLCTensorDescriptor elementByteCount:](MLCTensorDescriptor, "elementByteCount:", [v40 dataType]);

  v42 = [v34 data];
  v43 = [v42 bytes];

  if (v41 <= v39)
  {
    v44 = 0;
    v45 = v39 / v41;
    do
    {
      v46 = [MEMORY[0x277CCABB0] numberWithInt:*(v43 + 4 * v44)];
      [v37 setObject:v46 atIndexedSubscript:v44];

      ++v44;
    }

    while (v44 < v45);
  }

  v47 = [v68 objectAtIndexedSubscript:0];
  v48 = [v47 descriptor];
  v49 = [v48 shape];
  v50 = [v68 objectAtIndexedSubscript:0];
  v51 = [v50 descriptor];
  v52 = 1;
  v53 = +[MLCTensorDescriptor descriptorWithShape:sequenceLengths:sortedSequences:dataType:](MLCTensorDescriptor, "descriptorWithShape:sequenceLengths:sortedSequences:dataType:", v49, v37, 1, [v51 dataType]);
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
  v3 = [(MLCLSTMLayer *)self inputWeights];
  v4 = [v3 countByEnumeratingWithState:&v40 objects:v47 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v40 + 1) + 8 * v7) childLayers];
        [v8 addObject:self];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v5);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = [(MLCLSTMLayer *)self hiddenWeights];
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v46 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v36 + 1) + 8 * v13) childLayers];
        [v14 addObject:self];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v11);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = [(MLCLSTMLayer *)self peepholeWeights];
  v16 = [v15 countByEnumeratingWithState:&v32 objects:v45 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v32 + 1) + 8 * v19) childLayers];
        [v20 addObject:self];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v32 objects:v45 count:16];
    }

    while (v17);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = [(MLCLSTMLayer *)self biases];
  v22 = [v21 countByEnumeratingWithState:&v28 objects:v44 count:16];
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
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v28 + 1) + 8 * v25) childLayers];
        [v26 addObject:self];

        ++v25;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v28 objects:v44 count:16];
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
  v3 = [(MLCLSTMLayer *)self inputWeights];
  v4 = [v3 countByEnumeratingWithState:&v40 objects:v47 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v40 + 1) + 8 * v7) childLayers];
        [v8 removeObject:self];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v5);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = [(MLCLSTMLayer *)self hiddenWeights];
  v10 = [v9 countByEnumeratingWithState:&v36 objects:v46 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v36 + 1) + 8 * v13) childLayers];
        [v14 removeObject:self];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v11);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = [(MLCLSTMLayer *)self peepholeWeights];
  v16 = [v15 countByEnumeratingWithState:&v32 objects:v45 count:16];
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
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v32 + 1) + 8 * v19) childLayers];
        [v20 removeObject:self];

        ++v19;
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v32 objects:v45 count:16];
    }

    while (v17);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = [(MLCLSTMLayer *)self biases];
  v22 = [v21 countByEnumeratingWithState:&v28 objects:v44 count:16];
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
          objc_enumerationMutation(v21);
        }

        v26 = [*(*(&v28 + 1) + 8 * v25) childLayers];
        [v26 removeObject:self];

        ++v25;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v28 objects:v44 count:16];
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
  v6 = [(MLCLSTMLayer *)self descriptor];
  v7 = [(MLCLayer *)self conditionalTreeNode];
  v8 = [(MLCLayer *)self resultTensors];
  v9 = [v3 stringWithFormat:@"%@: { lstmDescriptor=%@ : conditionalTreeNode=%@ : resultTensor=%@ }", v5, v6, v7, v8];

  return v9;
}

- (id)summarizedDOTDescription
{
  v25 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v23 = NSStringFromClass(v3);
  v22 = [(MLCLayer *)self layerID];
  v27 = [(MLCLSTMLayer *)self descriptor];
  v21 = [v27 inputSize];
  v26 = [(MLCLSTMLayer *)self descriptor];
  v20 = [v26 hiddenSize];
  v24 = [(MLCLSTMLayer *)self descriptor];
  v19 = [v24 layerCount];
  v4 = [(MLCLSTMLayer *)self descriptor];
  v18 = [v4 usesBiases];
  v5 = [(MLCLSTMLayer *)self descriptor];
  v6 = [v5 batchFirst];
  v7 = [(MLCLSTMLayer *)self descriptor];
  v8 = [v7 isBidirectional];
  v9 = [(MLCLSTMLayer *)self descriptor];
  v10 = [v9 returnsSequences];
  v11 = [(MLCLSTMLayer *)self descriptor];
  [v11 dropout];
  v13 = v12;
  v14 = [(MLCLSTMLayer *)self descriptor];
  v15 = MLCLSTMResultModeDebugDescription([v14 resultMode]);
  v16 = [v25 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Input Size: %lu     Hidden Size: %lu     Layer Count: %lu<BR />Uses Biases: %hhd    Batch First: %hhd    Bidirectional: %hhd<BR />Returns Sequences: %hhd                   Dropout: %.03f<BR />Result Mode: %@</FONT>>", v23, v22, v21, v20, v19, v18, v6, v8, v10, *&v13, v15];

  return v16;
}

- (unint64_t)parametersCount
{
  v3 = [(MLCLSTMLayer *)self inputWeightsParameters];
  v4 = [v3 count];

  v5 = [(MLCLSTMLayer *)self hiddenWeightsParameters];
  v6 = [v5 count] + v4;

  v7 = [(MLCLSTMLayer *)self descriptor];
  LODWORD(v5) = [v7 usesBiases];

  if (v5)
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