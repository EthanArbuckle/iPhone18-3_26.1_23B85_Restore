@interface MLCFullyConnectedLayer
+ (MLCFullyConnectedLayer)layerWithWeights:(MLCTensor *)weights biases:(MLCTensor *)biases descriptor:(MLCConvolutionDescriptor *)descriptor;
- (BOOL)allocateDataForOptimizer:(id)a3;
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (BOOL)isSupportedShapeForTensorSources:(id)a3;
- (MLCFullyConnectedLayer)initWithWeights:(id)a3 biases:(id)a4 descriptor:(id)a5;
- (id)description;
- (id)resultTensorFromSources:(id)a3;
- (id)summarizedDOTDescription;
- (unint64_t)allocatedDataSizeForTraining:(BOOL)a3 optimizer:(id)a4;
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
  v11 = [[a1 alloc] initWithWeights:v10 biases:v9 descriptor:v8];

  return v11;
}

- (MLCFullyConnectedLayer)initWithWeights:(id)a3 biases:(id)a4 descriptor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 descriptor];
  v12 = [v11 shape];
  v13 = [v12 objectAtIndexedSubscript:0];
  v14 = [v13 unsignedIntegerValue];

  if (v14 >= 2)
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCFullyConnectedLayer initWithWeights:a2 biases:? descriptor:?];
    }

    goto LABEL_11;
  }

  v16 = [v8 data];

  if (!v16)
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCFullyConnectedLayer initWithWeights:a2 biases:? descriptor:?];
    }

    goto LABEL_11;
  }

  v69 = v10;
  if (v9)
  {
    v17 = [v9 descriptor];
    v18 = [v17 shape];
    v19 = [v18 objectAtIndexedSubscript:0];
    v20 = [v19 unsignedIntegerValue];

    if (v20 >= 2)
    {
      v15 = +[MLCLog framework];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [MLCFullyConnectedLayer initWithWeights:a2 biases:? descriptor:?];
      }

      goto LABEL_11;
    }

    v24 = [v9 descriptor];
    v25 = [v24 shape];
    v26 = [v25 objectAtIndexedSubscript:1];
    v27 = [v26 unsignedIntegerValue];
    v28 = [v10 outputFeatureChannelCount];

    if (v27 != v28)
    {
      v34 = +[MLCLog framework];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [MLCFullyConnectedLayer initWithWeights:a2 biases:? descriptor:?];
      }

      v21 = 0;
      v10 = v69;
      goto LABEL_12;
    }

    v29 = [v9 descriptor];
    v68 = [v29 shape];
    v30 = [v68 count];
    if (v30 >= 4)
    {
      v31 = [v9 descriptor];
      v32 = [v31 shape];
      v33 = [v32 objectAtIndexedSubscript:3];
      if ([v33 unsignedIntegerValue] > 1)
      {

        v10 = v69;
LABEL_28:
        v15 = +[MLCLog framework];
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [MLCFullyConnectedLayer initWithWeights:a2 biases:? descriptor:?];
        }

        goto LABEL_11;
      }

      v61 = v33;
      v63 = v32;
      v64 = v31;
    }

    v67 = v30;
    v35 = [v9 descriptor];
    v36 = [v35 shape];
    if ([v36 count] < 3)
    {
      v40 = 0;
    }

    else
    {
      v65 = [v9 descriptor];
      v66 = v29;
      v37 = [v65 shape];
      v38 = [v37 objectAtIndexedSubscript:2];
      v39 = [v38 unsignedIntegerValue] > 1;

      v40 = v39;
      v29 = v66;
    }

    v10 = v69;

    if (v67 >= 4)
    {
    }

    if (v40)
    {
      goto LABEL_28;
    }

    v41 = [v8 childLayers];
    v42 = [v41 count];
    v43 = [v9 childLayers];
    v44 = [v43 count];

    if (v42 != v44)
    {
      v15 = +[MLCLog framework];
      v10 = v69;
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
LABEL_11:

        v21 = 0;
LABEL_12:
        v22 = self;
        goto LABEL_13;
      }

LABEL_42:
      [MLCFullyConnectedLayer initWithWeights:a2 biases:? descriptor:?];
      goto LABEL_11;
    }

    v45 = [v8 childLayers];
    v46 = [v45 count];

    if (v46)
    {
      v47 = 0;
      while (1)
      {
        v48 = [v8 childLayers];
        v49 = [v48 objectAtIndexedSubscript:v47];
        v50 = [v9 childLayers];
        v51 = [v50 objectAtIndexedSubscript:v47];

        if (v49 != v51)
        {
          break;
        }

        ++v47;
        v52 = [v8 childLayers];
        v53 = [v52 count];

        if (v47 >= v53)
        {
          goto LABEL_35;
        }
      }

      v15 = +[MLCLog framework];
      v10 = v69;
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
    objc_storeStrong(&v54->_weights, a3);
    objc_storeStrong(&v55->_descriptor, a5);
    objc_storeStrong(&v55->_biases, a4);
    v56 = [MLCTensorParameter parameterWithTensor:v8];
    weightsParameter = v55->_weightsParameter;
    v55->_weightsParameter = v56;

    [(MLCTensor *)v55->_weights setIsLayerParameter:1];
    if (v9)
    {
      v58 = [MLCTensorParameter parameterWithTensor:v9];
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

  v22 = v55;
  v21 = v22;
  v10 = v69;
LABEL_13:

  return v21;
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(MLCFullyConnectedLayer *)self weights];
  v13 = [v12 parentLayers];
  v14 = [v13 count];

  if (v14)
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCFullyConnectedLayer compileForDevice:a2 sourceTensors:self resultTensor:?];
    }

    goto LABEL_7;
  }

  v16 = [(MLCFullyConnectedLayer *)self biases];
  v17 = [v16 parentLayers];
  v18 = [v17 count];

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
  v86 = v10;
  v21 = [(MLCFullyConnectedLayer *)self biases];
  v22 = [v21 childLayers];
  v23 = [v22 count];

  if (v23)
  {
    v24 = [(MLCFullyConnectedLayer *)self weights];
    v25 = [v24 childLayers];
    v26 = [v25 count];
    v27 = [(MLCFullyConnectedLayer *)self biases];
    v28 = [v27 childLayers];
    v29 = [v28 count];

    if (v26 != v29)
    {
      v15 = +[MLCLog framework];
      v10 = v86;
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

    v30 = [(MLCFullyConnectedLayer *)self weights];
    v31 = [v30 childLayers];
    v32 = [v31 count];

    if (v32)
    {
      v33 = 0;
      while (1)
      {
        v34 = [(MLCFullyConnectedLayer *)self weights];
        v35 = [v34 childLayers];
        v36 = [v35 objectAtIndexedSubscript:v33];
        v37 = [(MLCFullyConnectedLayer *)self biases];
        v38 = [v37 childLayers];
        v39 = [v38 objectAtIndexedSubscript:v33];

        if (v36 != v39)
        {
          break;
        }

        ++v33;
        v40 = [(MLCFullyConnectedLayer *)self weights];
        v41 = [v40 childLayers];
        v42 = [v41 count];

        if (v33 >= v42)
        {
          goto LABEL_15;
        }
      }

      v15 = +[MLCLog framework];
      v10 = v86;
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }
  }

LABEL_15:
  v43 = [(MLCLayer *)self fusedLayers];
  v44 = [v43 count];

  if (v44)
  {
    v45 = [(MLCLayer *)self fusedLayers];
    v46 = [v45 objectAtIndexedSubscript:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v48 = [(MLCLayer *)self fusedLayers];
    v49 = [v48 objectAtIndexedSubscript:0];
    if (isKindOfClass)
    {

      v50 = [(MLCLayer *)self fusedLayers];
      v51 = [v50 count];

      if (v51 < 2)
      {
        v83 = 0;
      }

      else
      {
        v52 = [(MLCLayer *)self fusedLayers];
        v53 = [v52 objectAtIndexedSubscript:1];
        v83 = [v53 descriptor];
      }

      v81 = [v9 computeEngine];
      v84 = [(MLCFullyConnectedLayer *)self descriptor];
      v82 = [v49 mean];
      v80 = [v49 variance];
      v60 = [v49 beta];
      v61 = [v49 gamma];
      [v49 varianceEpsilon];
      v63 = v62;
      [v49 momentum];
      v65 = v64;
      v79 = [(MLCFullyConnectedLayer *)self weights];
      v66 = [(MLCFullyConnectedLayer *)self biases];
      v55 = v81;
      LODWORD(v67) = v63;
      LODWORD(v68) = v65;
      v54 = v83;
      v15 = [v81 fusedFullyConnectedBatchNormalizationAndNeuronLayerWithDescriptor:v84 mean:v82 variance:v80 beta:v60 gamma:v61 varianceEpsilon:v83 momentum:v67 neuronDescriptor:v68 weights:v79 biasTerms:v66];

      v56 = v84;
    }

    else
    {
      objc_opt_class();
      v57 = objc_opt_isKindOfClass();

      v58 = [(MLCLayer *)self fusedLayers];
      v49 = [v58 objectAtIndexedSubscript:0];

      v54 = [v9 computeEngine];
      if (v57)
      {
        v55 = [(MLCFullyConnectedLayer *)self descriptor];
        v56 = [(MLCFullyConnectedLayer *)self weights];
        v59 = [(MLCFullyConnectedLayer *)self biases];
        v15 = [v54 fusedFullyConnectedAndSoftmaxLayerWithDescriptor:v55 weights:v56 biasTerms:v59 softmaxOp:{objc_msgSend(v49, "operation")}];
      }

      else
      {
        v55 = [v49 descriptor];
        v56 = [(MLCFullyConnectedLayer *)self descriptor];
        v59 = [(MLCFullyConnectedLayer *)self weights];
        v69 = [(MLCFullyConnectedLayer *)self biases];
        v15 = [v54 fusedFullyConnectedAndNeuronLayerWithDescriptor:v55 convolutionDescriptor:v56 weights:v59 biasTerms:v69];
      }
    }
  }

  else
  {
    v49 = [v9 computeEngine];
    v54 = [(MLCFullyConnectedLayer *)self descriptor];
    v55 = [(MLCFullyConnectedLayer *)self weights];
    v56 = [(MLCFullyConnectedLayer *)self biases];
    v15 = [v49 fullyConnectedLayerWithDescriptor:v54 weights:v55 biasTerms:v56];
  }

  if (!v15 || ![v15 count])
  {
    v78 = +[MLCLog framework];
    v10 = v86;
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      [MLCScatterLayer compileForDevice:v85 sourceTensors:? resultTensor:?];
    }

    goto LABEL_7;
  }

  v70 = [v9 computeEngine];
  v10 = v86;
  v19 = [v70 compileLayerDeviceOps:v15 sourceTensors:v86 resultTensor:v11];

  v87.receiver = self;
  v87.super_class = MLCFullyConnectedLayer;
  [(MLCLayer *)&v87 bindDevice:v9 deviceOps:v15];
  v71 = [(MLCLayer *)self fusedLayers];
  v72 = [v71 count];

  if (v72)
  {
    v73 = 0;
    do
    {
      v74 = [(MLCLayer *)self fusedLayers];
      v75 = [v74 objectAtIndexedSubscript:v73];
      [v75 bindDevice:v9 deviceOps:v15];

      ++v73;
      v76 = [(MLCLayer *)self fusedLayers];
      v77 = [v76 count];
    }

    while (v73 < v77);
  }

LABEL_8:

  return v19;
}

- (BOOL)allocateDataForOptimizer:(id)a3
{
  v4 = a3;
  v5 = [(MLCFullyConnectedLayer *)self weightsParameter];
  v6 = [(MLCLayer *)self device];
  [v5 allocateDataForOptimizer:v4 device:v6 isVector:1];

  v7 = [(MLCFullyConnectedLayer *)self biases];

  if (v7)
  {
    v8 = [(MLCFullyConnectedLayer *)self biasesParameter];
    v9 = [(MLCLayer *)self device];
    [v8 allocateDataForOptimizer:v4 device:v9 isVector:1];
  }

  v10 = [(MLCLayer *)self device];
  v11 = [v10 computeEngine];
  v12 = [(MLCLayer *)self deviceOps];
  v13 = [(MLCFullyConnectedLayer *)self weights];
  v14 = [(MLCFullyConnectedLayer *)self biases];
  [v11 setConvolutionLayerOptimizerDataForDeviceOps:v12 weights:v13 bias:v14];

  return 1;
}

- (unint64_t)allocatedDataSizeForTraining:(BOOL)a3 optimizer:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(MLCFullyConnectedLayer *)self weights];
  v8 = [v7 descriptor];
  v9 = [v8 tensorAllocationSizeInBytes];
  v10 = [(MLCFullyConnectedLayer *)self biases];
  v11 = [v10 descriptor];
  v12 = [v11 tensorAllocationSizeInBytes] + v9;

  if (v4)
  {
    v12 *= [v6 numOptimizerDataBuffers] + 2;
  }

  return v12;
}

- (id)resultTensorFromSources:(id)a3
{
  v4 = a3;
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v5 descriptor];
  v7 = [v6 shape];
  v8 = [v7 mutableCopy];

  v9 = [v4 objectAtIndexedSubscript:0];
  v10 = [v9 descriptor];
  v11 = [v10 shape];
  v12 = [v11 count];

  if (v12 == 4)
  {
    v13 = [v4 objectAtIndexedSubscript:0];
    v14 = [v13 descriptor];
    v15 = [v14 shape];
    v16 = [v15 objectAtIndexedSubscript:3];
    if ([v16 unsignedIntegerValue] == 1)
    {
      v17 = [v4 objectAtIndexedSubscript:0];
      v18 = [v17 descriptor];
      [v18 shape];
      v19 = v36 = self;
      [v19 objectAtIndexedSubscript:2];
      v20 = v35 = v13;
      v34 = [v20 unsignedIntegerValue];

      self = v36;
      if (v34 == 1)
      {
        v21 = MEMORY[0x277CCABB0];
        v22 = [(MLCFullyConnectedLayer *)v36 descriptor];
        v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(v22, "outputFeatureChannelCount")}];
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
  v22 = [(MLCFullyConnectedLayer *)self descriptor];
  v23 = [v27 numberWithUnsignedInteger:{objc_msgSend(v22, "outputFeatureChannelCount")}];
  v26 = v12 - 1;
  v24 = v8;
  v25 = v23;
LABEL_7:
  [v24 setObject:v25 atIndexedSubscript:v26];

  v28 = [v8 copy];
  v29 = [v4 objectAtIndexedSubscript:0];
  v30 = [v29 descriptor];
  v31 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v28, [v30 dataType]);

  v32 = [MLCTensor tensorWithDescriptor:v31];

  return v32;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCFullyConnectedLayer *)self accumulatorPrecisionOption];
  v7 = [(MLCFullyConnectedLayer *)self weights];
  v8 = [(MLCFullyConnectedLayer *)self biases];
  v9 = [(MLCFullyConnectedLayer *)self descriptor];
  v10 = [(MLCLayer *)self conditionalTreeNode];
  v11 = [(MLCLayer *)self resultTensors];
  v12 = [v3 stringWithFormat:@"%@: { accumulatorPrecisionOption=%d : weights=%@ : biasTerms=%@ : descriptor=%@ : conditionalTreeNode=%@ : resultTensor=%@ }", v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCLayer *)self layerID];
  v7 = [(MLCFullyConnectedLayer *)self descriptor];
  v8 = [v7 inputFeatureChannelCount];
  v9 = [(MLCFullyConnectedLayer *)self descriptor];
  v10 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Input Feature Channel Count: %lu<BR />Output Feature Channel Count: %lu<BR /></FONT>>", v5, v6, v8, objc_msgSend(v9, "outputFeatureChannelCount")];

  return v10;
}

- (void)linkAssociatedTensors
{
  v3 = [(MLCFullyConnectedLayer *)self weights];
  v4 = [v3 childLayers];
  [v4 addObject:self];

  v5 = [(MLCFullyConnectedLayer *)self biases];

  if (v5)
  {
    v7 = [(MLCFullyConnectedLayer *)self biases];
    v6 = [v7 childLayers];
    [v6 addObject:self];
  }
}

- (void)unlinkAssociatedTensors
{
  v3 = [(MLCFullyConnectedLayer *)self weights];
  v4 = [v3 childLayers];
  [v4 removeObject:self];

  v5 = [(MLCFullyConnectedLayer *)self biases];

  if (v5)
  {
    v7 = [(MLCFullyConnectedLayer *)self biases];
    v6 = [v7 childLayers];
    [v6 removeObject:self];
  }
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
  v2 = [(MLCFullyConnectedLayer *)self biasesParameter];

  if (v2)
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