@interface MLCGroupNormalizationLayer
+ (MLCGroupNormalizationLayer)layerWithFeatureChannelCount:(NSUInteger)featureChannelCount groupCount:(NSUInteger)groupCount beta:(MLCTensor *)beta gamma:(MLCTensor *)gamma varianceEpsilon:(float)varianceEpsilon;
- (BOOL)allocateDataForOptimizer:(id)a3;
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (BOOL)isSupportedShapeForTensorSources:(id)a3;
- (BOOL)isValidTrainingParameters;
- (MLCGroupNormalizationLayer)initWithFeatureChannelCount:(unint64_t)a3 groupCount:(unint64_t)a4 beta:(id)a5 gamma:(id)a6 varianceEpsilon:(float)a7;
- (id)description;
- (id)summarizedDOTDescription;
- (unint64_t)allocatedDataSizeForTraining:(BOOL)a3 optimizer:(id)a4;
- (unint64_t)parametersCount;
- (void)linkAssociatedTensors;
- (void)unlinkAssociatedTensors;
@end

@implementation MLCGroupNormalizationLayer

+ (MLCGroupNormalizationLayer)layerWithFeatureChannelCount:(NSUInteger)featureChannelCount groupCount:(NSUInteger)groupCount beta:(MLCTensor *)beta gamma:(MLCTensor *)gamma varianceEpsilon:(float)varianceEpsilon
{
  v12 = gamma;
  v13 = beta;
  v14 = [a1 alloc];
  *&v15 = varianceEpsilon;
  v16 = [v14 initWithFeatureChannelCount:featureChannelCount groupCount:groupCount beta:v13 gamma:v12 varianceEpsilon:v15];

  return v16;
}

- (MLCGroupNormalizationLayer)initWithFeatureChannelCount:(unint64_t)a3 groupCount:(unint64_t)a4 beta:(id)a5 gamma:(id)a6 varianceEpsilon:(float)a7
{
  v14 = a5;
  v15 = a6;
  if (!a3)
  {
    v16 = +[MLCLog framework];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MLCGroupNormalizationLayer initWithFeatureChannelCount:a2 groupCount:? beta:? gamma:? varianceEpsilon:?];
    }

    goto LABEL_45;
  }

  if (!a4)
  {
    v16 = +[MLCLog framework];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MLCGroupNormalizationLayer initWithFeatureChannelCount:a2 groupCount:? beta:? gamma:? varianceEpsilon:?];
    }

    goto LABEL_45;
  }

  if (a4 > a3)
  {
    v16 = +[MLCLog framework];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MLCGroupNormalizationLayer initWithFeatureChannelCount:a2 groupCount:? beta:? gamma:? varianceEpsilon:?];
    }

LABEL_45:

    v37 = 0;
    goto LABEL_46;
  }

  if (a3 % a4)
  {
    v16 = +[MLCLog framework];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MLCGroupNormalizationLayer initWithFeatureChannelCount:a2 groupCount:? beta:? gamma:? varianceEpsilon:?];
    }

    goto LABEL_45;
  }

  if (a7 < 0.0)
  {
    v16 = +[MLCLog framework];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MLCGroupNormalizationLayer initWithFeatureChannelCount:a2 groupCount:? beta:? gamma:? varianceEpsilon:?];
    }

    goto LABEL_45;
  }

  if (v14)
  {
    v59 = [v14 descriptor];
    v17 = [v59 shape];
    v18 = [v17 objectAtIndexedSubscript:3];
    if ([v18 unsignedIntegerValue] == 1)
    {
      v55 = v18;
      v57 = v17;
      v53 = [v14 descriptor];
      v19 = [v53 shape];
      v20 = [v19 objectAtIndexedSubscript:2];
      if ([v20 unsignedIntegerValue] == 1)
      {
        v49 = v20;
        v51 = v19;
        v47 = [v14 descriptor];
        v45 = [v47 shape];
        v21 = [v45 objectAtIndexedSubscript:1];
        if ([v21 unsignedIntegerValue] == a3)
        {
          v41 = [v14 descriptor];
          v39 = [v41 shape];
          v22 = [v39 objectAtIndexedSubscript:0];
          v43 = [v22 unsignedIntegerValue];

          if (v43 == 1)
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
      v17 = v57;
    }

    goto LABEL_32;
  }

LABEL_21:
  if (v15)
  {
    v60 = [v15 descriptor];
    v23 = [v60 shape];
    v24 = [v23 objectAtIndexedSubscript:3];
    if ([v24 unsignedIntegerValue] == 1)
    {
      v56 = v24;
      v58 = v23;
      v54 = [v15 descriptor];
      v25 = [v54 shape];
      v26 = [v25 objectAtIndexedSubscript:2];
      if ([v26 unsignedIntegerValue] == 1)
      {
        v50 = v26;
        v52 = v25;
        v48 = [v15 descriptor];
        v46 = [v48 shape];
        v27 = [v46 objectAtIndexedSubscript:1];
        if ([v27 unsignedIntegerValue] == a3)
        {
          v42 = [v15 descriptor];
          v40 = [v42 shape];
          v28 = [v40 objectAtIndexedSubscript:0];
          v44 = [v28 unsignedIntegerValue];

          if (v44 == 1)
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
      v23 = v58;
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
    v29->_featureChannelCount = a3;
    v29->_groupCount = a4;
    objc_storeStrong(&v29->_beta, a5);
    objc_storeStrong(&v30->_gamma, a6);
    v30->_varianceEpsilon = a7;
    if (v14)
    {
      v31 = [MLCTensorParameter parameterWithTensor:v14];
      betaParameter = v30->_betaParameter;
      v30->_betaParameter = v31;

      [(MLCTensor *)v30->_beta setIsLayerParameter:1];
    }

    else
    {
      v33 = v30->_betaParameter;
      v30->_betaParameter = 0;
    }

    if (v15)
    {
      v34 = [MLCTensorParameter parameterWithTensor:v15];
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
  v37 = self;
LABEL_46:

  return v37;
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(MLCGroupNormalizationLayer *)self beta];

  if (v12)
  {
    v13 = [(MLCGroupNormalizationLayer *)self beta];
    v14 = [v13 parentLayers];
    v15 = [v14 count];

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

  v17 = [(MLCGroupNormalizationLayer *)self gamma];

  if (v17)
  {
    v18 = [(MLCGroupNormalizationLayer *)self gamma];
    v19 = [v18 parentLayers];
    v20 = [v19 count];

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

  v21 = [(MLCLayer *)self fusedLayers];
  v22 = [v21 count];

  v43 = v9;
  if (v22)
  {
    v23 = [(MLCLayer *)self fusedLayers];
    v24 = [v23 objectAtIndexedSubscript:0];

    v25 = [v9 computeEngine];
    v26 = [v24 descriptor];
    v27 = [(MLCGroupNormalizationLayer *)self featureChannelCount];
    v28 = v11;
    v29 = v10;
    v30 = [(MLCGroupNormalizationLayer *)self groupCount];
    v31 = [(MLCGroupNormalizationLayer *)self beta];
    v32 = [(MLCGroupNormalizationLayer *)self gamma];
    [(MLCGroupNormalizationLayer *)self varianceEpsilon];
    v33 = v30;
    v10 = v29;
    v11 = v28;
    v16 = [v25 fusedGroupNormalizationAndNeuronLayerWithDescriptor:v26 featureChannelCount:v27 groupCount:v33 beta:v31 gamma:v32 varianceEpsilon:?];
  }

  else
  {
    v24 = [v9 computeEngine];
    v34 = [(MLCGroupNormalizationLayer *)self featureChannelCount];
    v35 = [(MLCGroupNormalizationLayer *)self groupCount];
    v25 = [(MLCGroupNormalizationLayer *)self beta];
    v26 = [(MLCGroupNormalizationLayer *)self gamma];
    [(MLCGroupNormalizationLayer *)self varianceEpsilon];
    v16 = [v24 groupNormalizationLayerWithFeatureChannelCount:v34 groupCount:v35 beta:v25 gamma:v26 varianceEpsilon:?];
  }

  if (!v16 || ![v16 count])
  {
    v40 = +[MLCLog framework];
    v9 = v43;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [MLCScatterLayer compileForDevice:v42 sourceTensors:? resultTensor:?];
    }

    goto LABEL_19;
  }

  v9 = v43;
  v36 = [v43 computeEngine];
  v37 = objc_opt_respondsToSelector();

  if (v37)
  {
    v38 = [v43 computeEngine];
    v39 = [v38 compileLayerDeviceOps:v16 sourceTensors:v10 resultTensor:v11];
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

- (BOOL)allocateDataForOptimizer:(id)a3
{
  v4 = a3;
  v5 = [(MLCGroupNormalizationLayer *)self beta];

  if (v5)
  {
    v6 = [(MLCGroupNormalizationLayer *)self betaParameter];
    v7 = [(MLCLayer *)self device];
    [v6 allocateDataForOptimizer:v4 device:v7 isVector:1];
  }

  v8 = [(MLCGroupNormalizationLayer *)self gamma];

  if (v8)
  {
    v9 = [(MLCGroupNormalizationLayer *)self gammaParameter];
    v10 = [(MLCLayer *)self device];
    [v9 allocateDataForOptimizer:v4 device:v10 isVector:1];
  }

  v11 = [(MLCLayer *)self device];
  v12 = [v11 computeEngine];
  v13 = [(MLCLayer *)self deviceOps];
  v14 = [(MLCGroupNormalizationLayer *)self beta];
  v15 = [(MLCGroupNormalizationLayer *)self gamma];
  [v12 setNormalizationLayerOptimizerDataForDeviceOps:v13 beta:v14 gamma:v15];

  return 1;
}

- (unint64_t)allocatedDataSizeForTraining:(BOOL)a3 optimizer:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(MLCGroupNormalizationLayer *)self beta];
  v8 = [v7 descriptor];
  v9 = [v8 tensorAllocationSizeInBytes];
  v10 = [(MLCGroupNormalizationLayer *)self gamma];
  v11 = [v10 descriptor];
  v12 = [v11 tensorAllocationSizeInBytes] + v9;

  if (v4)
  {
    v12 += v12 * [v6 numOptimizerDataBuffers];
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCGroupNormalizationLayer *)self featureChannelCount];
  v7 = [(MLCGroupNormalizationLayer *)self groupCount];
  v8 = [(MLCGroupNormalizationLayer *)self beta];
  v9 = [(MLCGroupNormalizationLayer *)self gamma];
  [(MLCGroupNormalizationLayer *)self varianceEpsilon];
  v11 = v10;
  v12 = [(MLCLayer *)self conditionalTreeNode];
  v13 = [(MLCLayer *)self resultTensors];
  v14 = [v3 stringWithFormat:@"%@: { featureChannelCount=%lu : groupCount=%lu : beta=%@ : gamma=%@ : varianceEpsilon=%f : conditionalTreeNode=%@ : resultTensor=%@ }", v5, v6, v7, v8, v9, *&v11, v12, v13];

  return v14;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCLayer *)self layerID];
  v7 = [(MLCGroupNormalizationLayer *)self featureChannelCount];
  v8 = [(MLCGroupNormalizationLayer *)self groupCount];
  [(MLCGroupNormalizationLayer *)self varianceEpsilon];
  v10 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Feature Channel Count: %lu    Group Count: %lu<BR />Variance Epsilon: %.03f</FONT>>", v5, v6, v7, v8, v9];

  return v10;
}

- (void)linkAssociatedTensors
{
  v3 = [(MLCGroupNormalizationLayer *)self beta];
  v4 = [v3 childLayers];
  [v4 addObject:self];

  v6 = [(MLCGroupNormalizationLayer *)self gamma];
  v5 = [v6 childLayers];
  [v5 addObject:self];
}

- (void)unlinkAssociatedTensors
{
  v3 = [(MLCGroupNormalizationLayer *)self beta];
  v4 = [v3 childLayers];
  [v4 removeObject:self];

  v6 = [(MLCGroupNormalizationLayer *)self gamma];
  v5 = [v6 childLayers];
  [v5 removeObject:self];
}

- (BOOL)isValidTrainingParameters
{
  v3 = [(MLCGroupNormalizationLayer *)self beta];
  if (v3)
  {
    v4 = [(MLCGroupNormalizationLayer *)self gamma];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
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
  v3 = [(MLCGroupNormalizationLayer *)self betaParameter];

  v4 = [(MLCGroupNormalizationLayer *)self gammaParameter];

  v5 = 1;
  if (v3)
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return v3 != 0;
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