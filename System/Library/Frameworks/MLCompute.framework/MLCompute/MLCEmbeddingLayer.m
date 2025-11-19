@interface MLCEmbeddingLayer
+ (MLCEmbeddingLayer)layerWithDescriptor:(MLCEmbeddingDescriptor *)descriptor weights:(MLCTensor *)weights;
- (BOOL)allocateDataForOptimizer:(id)a3;
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (MLCEmbeddingLayer)initWithDescriptor:(id)a3 weight:(id)a4;
- (id)description;
- (id)resultTensorFromSources:(id)a3;
- (id)summarizedDOTDescription;
- (unint64_t)allocatedDataSizeForTraining:(BOOL)a3 optimizer:(id)a4;
- (void)allocateGradientsForParameters;
- (void)linkAssociatedTensors;
- (void)unlinkAssociatedTensors;
@end

@implementation MLCEmbeddingLayer

+ (MLCEmbeddingLayer)layerWithDescriptor:(MLCEmbeddingDescriptor *)descriptor weights:(MLCTensor *)weights
{
  v6 = weights;
  v7 = descriptor;
  v8 = [[a1 alloc] initWithDescriptor:v7 weight:v6];

  return v8;
}

- (MLCEmbeddingLayer)initWithDescriptor:(id)a3 weight:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 paddingIndex];

  if (v9)
  {
    v10 = [v8 descriptor];
    v11 = [v10 stride];
    v12 = [v8 descriptor];
    v13 = [v11 objectAtIndexedSubscript:{objc_msgSend(v12, "dimensionCount") - 1}];
    v14 = [v13 unsignedIntegerValue];

    v15 = [v7 paddingIndex];
    v16 = [v15 unsignedIntegerValue];
    v17 = [v7 embeddingDimension];
    v18 = [v17 unsignedIntegerValue] * v16;

    v19 = [v8 data];
    v20 = ([v19 bytes] + 4 * v18);
    v21 = [v7 embeddingDimension];
    bzero(v20, [v21 unsignedIntegerValue] * v14);
  }

  v28.receiver = self;
  v28.super_class = MLCEmbeddingLayer;
  v22 = [(MLCLayer *)&v28 initWithLabel:@"Embedding"];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_descriptor, a3);
    objc_storeStrong(&v23->_weights, a4);
    v24 = [MLCTensorParameter parameterWithTensor:v8];
    weightsParameter = v23->_weightsParameter;
    v23->_weightsParameter = v24;

    [(MLCTensor *)v23->_weights setIsLayerParameter:1];
    v27.receiver = v23;
    v27.super_class = MLCEmbeddingLayer;
    [(MLCLayer *)&v27 setIsUpdatable:1];
  }

  return v23;
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v8 = a3;
  v76 = a4;
  v9 = a5;
  v10 = [(MLCEmbeddingLayer *)self weights];
  v74 = [v10 descriptor];
  v11 = [v74 shape];
  v12 = [(MLCTensor *)self->_weights descriptor];
  v72 = v11;
  v13 = [v11 objectAtIndexedSubscript:{objc_msgSend(v12, "dimensionCount") - 1}];
  v14 = [v13 unsignedIntegerValue];
  v15 = [(MLCEmbeddingLayer *)self descriptor];
  v16 = [v15 embeddingDimension];
  if (v14 != [v16 unsignedIntegerValue])
  {

    goto LABEL_13;
  }

  v65 = [(MLCEmbeddingLayer *)self weights];
  [v65 descriptor];
  v17 = v71 = v8;
  [v17 shape];
  v18 = v70 = v9;
  v19 = [(MLCTensor *)self->_weights descriptor];
  [v18 objectAtIndexedSubscript:{objc_msgSend(v19, "dimensionCount") - 2}];
  v20 = v67 = v10;
  v63 = [v20 unsignedIntegerValue];
  v21 = [(MLCEmbeddingLayer *)self descriptor];
  [v21 embeddingCount];
  v22 = v60 = self;
  v61 = [v22 unsignedIntegerValue];

  v9 = v70;
  v8 = v71;

  if (v63 != v61)
  {
LABEL_13:
    v50 = +[MLCLog framework];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      [MLCEmbeddingLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    v51 = 0;
    v34 = v76;
    goto LABEL_16;
  }

  v23 = [v70 descriptor];
  v24 = [v23 shape];
  v25 = [v70 descriptor];
  v26 = [v24 objectAtIndexedSubscript:{objc_msgSend(v25, "dimensionCount") - 1}];
  v27 = [v26 unsignedIntegerValue];
  v28 = [(MLCEmbeddingLayer *)v60 descriptor];
  v29 = [v28 embeddingDimension];
  v30 = [v29 unsignedIntegerValue];

  if (v27 != v30)
  {
    v50 = +[MLCLog framework];
    v8 = v71;
    v34 = v76;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      [MLCEmbeddingLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_19;
  }

  v31 = [v70 descriptor];
  v32 = [v31 shape];
  v75 = [v70 descriptor];
  v73 = [v32 objectAtIndexedSubscript:{objc_msgSend(v75, "dimensionCount") - 2}];
  v33 = [v73 unsignedIntegerValue];
  v34 = v76;
  v68 = [v76 objectAtIndexedSubscript:0];
  v66 = [v68 descriptor];
  v35 = [v66 shape];
  v36 = [v76 objectAtIndexedSubscript:0];
  v37 = [v36 descriptor];
  v38 = [v35 objectAtIndexedSubscript:{objc_msgSend(v37, "dimensionCount") - 1}];
  v9 = v70;
  if (v33 != [v38 unsignedIntegerValue])
  {

    v8 = v71;
    goto LABEL_21;
  }

  v57 = [v70 descriptor];
  [v57 shape];
  v39 = v64 = v31;
  v40 = [v39 objectAtIndexedSubscript:0];
  v62 = [v40 unsignedIntegerValue];
  v41 = [v76 objectAtIndexedSubscript:0];
  [v41 descriptor];
  v42 = v59 = v32;
  v43 = [v42 shape];
  v44 = [v43 objectAtIndexedSubscript:0];
  v58 = [v44 unsignedIntegerValue];

  v34 = v76;
  v9 = v70;

  v8 = v71;
  if (v62 != v58)
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

  v45 = [v76 objectAtIndexedSubscript:0];
  v46 = [v45 descriptor];
  v47 = [v46 dataType];

  if (v47 != 5)
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
    v48 = [(MLCEmbeddingLayer *)v60 descriptor];
    v49 = [v48 scalesGradientByFrequency];

    if (v49)
    {
      v50 = +[MLCLog framework];
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        [MLCEmbeddingLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
      }

LABEL_19:
      v51 = 0;
      v9 = v70;
      goto LABEL_16;
    }
  }

  v53 = [v71 computeEngine];
  v54 = [(MLCEmbeddingLayer *)v60 descriptor];
  v55 = [(MLCEmbeddingLayer *)v60 weights];
  v50 = [v53 embeddingLayerWithDescriptor:v54 weights:v55 inferenceOnly:{-[MLCLayer compileForInferenceOnly](v60, "compileForInferenceOnly")}];

  if (v50 && [v50 count])
  {
    v77.receiver = v60;
    v77.super_class = MLCEmbeddingLayer;
    [(MLCLayer *)&v77 bindDevice:v71 deviceOps:v50];
    v56 = [(MLCEmbeddingLayer *)v60 weights];
    [v56 setDevice:v71];
    v51 = 1;
    v9 = v70;
  }

  else
  {
    v56 = +[MLCLog framework];
    v9 = v70;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      [MLCScatterLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    v51 = 0;
  }

LABEL_16:
  return v51;
}

- (BOOL)allocateDataForOptimizer:(id)a3
{
  v4 = a3;
  v5 = [(MLCEmbeddingLayer *)self weightsParameter];
  v6 = [(MLCLayer *)self device];
  [v5 allocateDataForOptimizer:v4 device:v6 isVector:0];

  v7 = [(MLCLayer *)self device];
  v8 = [v7 computeEngine];
  v9 = [(MLCLayer *)self deviceOps];
  v10 = [(MLCEmbeddingLayer *)self weights];
  [v8 setConvolutionLayerOptimizerDataForDeviceOps:v9 weights:v10 bias:0];

  return 1;
}

- (void)allocateGradientsForParameters
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [(MLCLayer *)self device];
  v4 = [v3 computeEngine];
  v5 = [(MLCLayer *)self deviceOps];
  v6 = [(MLCEmbeddingLayer *)self weights];
  v9[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v4 allocateParameterGradientsForDeviceOps:v5 parameters:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (unint64_t)allocatedDataSizeForTraining:(BOOL)a3 optimizer:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(MLCEmbeddingLayer *)self weights];
  v8 = [v7 descriptor];
  v9 = [v8 tensorAllocationSizeInBytes];

  if (v4)
  {
    v9 *= [v6 numOptimizerDataBuffers] + 2;
  }

  return v9;
}

- (id)resultTensorFromSources:(id)a3
{
  v4 = [a3 objectAtIndexedSubscript:0];
  v5 = [v4 descriptor];
  v6 = [v5 shape];
  v7 = [v6 mutableCopy];

  v8 = [(MLCEmbeddingLayer *)self descriptor];
  v9 = [v8 embeddingDimension];
  [v7 addObject:v9];

  v10 = [(MLCEmbeddingLayer *)self weights];
  v11 = [v10 descriptor];
  v12 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v7, [v11 dataType]);

  v13 = [MLCTensor tensorWithDescriptor:v12];

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCEmbeddingLayer *)self descriptor];
  v7 = [(MLCEmbeddingLayer *)self weights];
  v8 = [(MLCLayer *)self resultTensors];
  v9 = [v3 stringWithFormat:@"%@: { descriptor=%@ : weight=%@ : resultTensor=%@ }", v5, v6, v7, v8];

  return v9;
}

- (id)summarizedDOTDescription
{
  v17 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v15 = NSStringFromClass(v3);
  v16 = [(MLCLayer *)self layerID];
  v19 = [(MLCEmbeddingLayer *)self descriptor];
  v4 = [v19 embeddingCount];
  v18 = [(MLCEmbeddingLayer *)self descriptor];
  v5 = [v18 embeddingDimension];
  v6 = [(MLCEmbeddingLayer *)self descriptor];
  v7 = [v6 paddingIndex];
  v8 = [(MLCEmbeddingLayer *)self descriptor];
  v9 = [v8 maximumNorm];
  v10 = [(MLCEmbeddingLayer *)self descriptor];
  v11 = [v10 pNorm];
  v12 = [(MLCEmbeddingLayer *)self descriptor];
  v13 = [v17 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Embedding Count: %@    Embedding Dimension: %@<BR />PaddingIndex: %@   Maximum Norm: %@   P Norm: %@<BR />Scale Gradient By Frequency: %hhd</FONT>>", v15, v16, v4, v5, v7, v9, v11, objc_msgSend(v12, "scalesGradientByFrequency")];

  return v13;
}

- (void)linkAssociatedTensors
{
  v4 = [(MLCEmbeddingLayer *)self weights];
  v3 = [v4 childLayers];
  [v3 addObject:self];
}

- (void)unlinkAssociatedTensors
{
  v4 = [(MLCEmbeddingLayer *)self weights];
  v3 = [v4 childLayers];
  [v3 removeObject:self];
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