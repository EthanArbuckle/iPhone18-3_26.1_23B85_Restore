@interface MLCInstanceNormalizationLayer
+ (MLCInstanceNormalizationLayer)layerWithFeatureChannelCount:(NSUInteger)featureChannelCount beta:(MLCTensor *)beta gamma:(MLCTensor *)gamma varianceEpsilon:(float)varianceEpsilon;
+ (MLCInstanceNormalizationLayer)layerWithFeatureChannelCount:(NSUInteger)featureChannelCount beta:(MLCTensor *)beta gamma:(MLCTensor *)gamma varianceEpsilon:(float)varianceEpsilon momentum:(float)momentum;
+ (MLCInstanceNormalizationLayer)layerWithFeatureChannelCount:(NSUInteger)featureChannelCount mean:(MLCTensor *)mean variance:(MLCTensor *)variance beta:(MLCTensor *)beta gamma:(MLCTensor *)gamma varianceEpsilon:(float)varianceEpsilon momentum:(float)momentum;
- (BOOL)allocateDataForOptimizer:(id)a3;
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (BOOL)isValidTrainingParameters;
- (MLCInstanceNormalizationLayer)initWithFeatureChannelCount:(unint64_t)a3 mean:(id)a4 variance:(id)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8 momentum:(float)a9;
- (id)description;
- (id)summarizedDOTDescription;
- (unint64_t)allocatedDataSizeForTraining:(BOOL)a3 optimizer:(id)a4;
- (unint64_t)parametersCount;
- (void)linkAssociatedTensors;
- (void)unlinkAssociatedTensors;
@end

@implementation MLCInstanceNormalizationLayer

+ (MLCInstanceNormalizationLayer)layerWithFeatureChannelCount:(NSUInteger)featureChannelCount beta:(MLCTensor *)beta gamma:(MLCTensor *)gamma varianceEpsilon:(float)varianceEpsilon
{
  v10 = gamma;
  v11 = beta;
  v12 = [a1 alloc];
  LODWORD(v13) = 1065185444;
  *&v14 = varianceEpsilon;
  v15 = [v12 initWithFeatureChannelCount:featureChannelCount mean:0 variance:0 beta:v11 gamma:v10 varianceEpsilon:v14 momentum:v13];

  return v15;
}

+ (MLCInstanceNormalizationLayer)layerWithFeatureChannelCount:(NSUInteger)featureChannelCount beta:(MLCTensor *)beta gamma:(MLCTensor *)gamma varianceEpsilon:(float)varianceEpsilon momentum:(float)momentum
{
  v12 = gamma;
  v13 = beta;
  v14 = [a1 alloc];
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
  v20 = [a1 alloc];
  *&v21 = varianceEpsilon;
  *&v22 = momentum;
  v23 = [v20 initWithFeatureChannelCount:featureChannelCount mean:v19 variance:v18 beta:v17 gamma:v16 varianceEpsilon:v21 momentum:v22];

  return v23;
}

- (MLCInstanceNormalizationLayer)initWithFeatureChannelCount:(unint64_t)a3 mean:(id)a4 variance:(id)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8 momentum:(float)a9
{
  v15 = a4;
  obj = a5;
  v16 = a5;
  v69 = a6;
  v72 = a6;
  v70 = a7;
  v17 = a7;
  if (v15)
  {
    v18 = [v15 descriptor];
    v19 = [v18 shape];
    v20 = [v19 objectAtIndexedSubscript:3];
    if ([v20 unsignedIntegerValue] >= 2)
    {
    }

    else
    {
      [v15 descriptor];
      v21 = v65 = self;
      v22 = [v21 shape];
      [v22 objectAtIndexedSubscript:2];
      v23 = v17;
      v25 = v24 = v16;
      v26 = [v25 unsignedIntegerValue];

      v16 = v24;
      v17 = v23;

      self = v65;
      if (v26 < 2)
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
  if (!v16)
  {
    goto LABEL_7;
  }

  v27 = [v16 descriptor];
  v28 = [v27 shape];
  v29 = [v28 objectAtIndexedSubscript:3];
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

  v30 = [v16 descriptor];
  [v30 shape];
  v32 = v31 = self;
  [v32 objectAtIndexedSubscript:2];
  v33 = v17;
  v35 = v34 = v16;
  v65 = [v35 unsignedIntegerValue];

  v16 = v34;
  v17 = v33;

  self = v31;
  if (v65 >= 2)
  {
    goto LABEL_20;
  }

LABEL_7:
  if (!v72)
  {
    goto LABEL_10;
  }

  v36 = [v72 descriptor];
  v37 = [v36 shape];
  v38 = [v37 objectAtIndexedSubscript:3];
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

  v39 = [v72 descriptor];
  [v39 shape];
  v41 = v40 = self;
  [v41 objectAtIndexedSubscript:2];
  v42 = v17;
  v44 = v43 = v16;
  v65 = [v44 unsignedIntegerValue];

  v16 = v43;
  v17 = v42;

  self = v40;
  if (v65 >= 2)
  {
    goto LABEL_23;
  }

LABEL_10:
  if (!v17)
  {
    goto LABEL_13;
  }

  v45 = [v17 descriptor];
  v46 = [v45 shape];
  v47 = [v46 objectAtIndexedSubscript:3];
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

  v48 = [v17 descriptor];
  [v48 shape];
  v50 = v49 = self;
  [v50 objectAtIndexedSubscript:2];
  v51 = v17;
  v53 = v52 = v16;
  v65 = [v53 unsignedIntegerValue];

  v16 = v52;
  v17 = v51;

  self = v49;
  if (v65 >= 2)
  {
    goto LABEL_26;
  }

LABEL_13:
  if ((v72 == 0) != (v17 == 0))
  {
    v54 = +[MLCLog framework];
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      [MLCInstanceNormalizationLayer initWithFeatureChannelCount:a2 mean:? variance:? beta:? gamma:? varianceEpsilon:? momentum:?];
    }

LABEL_28:

    v55 = 0;
    goto LABEL_29;
  }

  v74.receiver = self;
  v74.super_class = MLCInstanceNormalizationLayer;
  v57 = [(MLCLayer *)&v74 initWithLabel:@"InstanceNorm"];
  v58 = v57;
  if (v57)
  {
    v57->_featureChannelCount = a3;
    objc_storeStrong(&v57->_mean, a4);
    objc_storeStrong(&v58->_variance, obj);
    objc_storeStrong(&v58->_beta, v69);
    objc_storeStrong(&v58->_gamma, v70);
    v58->_varianceEpsilon = a8;
    v58->_momentum = a9;
    if (v72)
    {
      v59 = [MLCTensorParameter parameterWithTensor:v72];
      betaParameter = v58->_betaParameter;
      v58->_betaParameter = v59;

      [(MLCTensor *)v58->_beta setIsLayerParameter:1];
    }

    else
    {
      v61 = v58->_betaParameter;
      v58->_betaParameter = 0;
    }

    if (v17)
    {
      v62 = [MLCTensorParameter parameterWithTensor:v17];
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
    [(MLCLayer *)&v73 setIsUpdatable:1, v65];
  }

  self = v58;
  v55 = self;
LABEL_29:

  return v55;
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v8 = a3;
  v58 = a4;
  v57 = a5;
  v9 = [&unk_284BA6200 mutableCopy];
  if ([v8 type] == 3)
  {
    [v9 addObject:&unk_284BA5F30];
  }

  v10 = [(MLCInstanceNormalizationLayer *)self beta];

  if (v10)
  {
    v11 = [(MLCInstanceNormalizationLayer *)self beta];
    v12 = [v11 isTensorDataTypeInListOfDataTypes:v9];

    if ((v12 & 1) == 0)
    {
      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [MLCInstanceNormalizationLayer compileForDevice:a2 sourceTensors:self resultTensor:?];
      }

      goto LABEL_26;
    }

    v13 = [(MLCInstanceNormalizationLayer *)self beta];
    v14 = [v13 parentLayers];
    v15 = [v14 count];

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

  v17 = [(MLCInstanceNormalizationLayer *)self gamma];

  if (v17)
  {
    v18 = [(MLCInstanceNormalizationLayer *)self gamma];
    v19 = [v18 isTensorDataTypeInListOfDataTypes:v9];

    if ((v19 & 1) == 0)
    {
      v16 = +[MLCLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [MLCInstanceNormalizationLayer compileForDevice:a2 sourceTensors:self resultTensor:?];
      }

      goto LABEL_26;
    }

    v20 = [(MLCInstanceNormalizationLayer *)self gamma];
    v21 = [v20 parentLayers];
    v22 = [v21 count];

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

  v23 = [(MLCLayer *)self fusedLayers];
  v24 = [v23 count];

  v55 = v8;
  if (v24)
  {
    v25 = [(MLCLayer *)self fusedLayers];
    v54 = [v25 objectAtIndexedSubscript:0];

    v26 = [v8 computeEngine];
    v27 = [v54 descriptor];
    v28 = [(MLCInstanceNormalizationLayer *)self featureChannelCount];
    v29 = [(MLCInstanceNormalizationLayer *)self mean];
    v30 = [(MLCInstanceNormalizationLayer *)self variance];
    v31 = [(MLCInstanceNormalizationLayer *)self beta];
    v32 = [(MLCInstanceNormalizationLayer *)self gamma];
    [(MLCInstanceNormalizationLayer *)self varianceEpsilon];
    v34 = v33;
    [(MLCInstanceNormalizationLayer *)self momentum];
    LODWORD(v36) = v35;
    v37 = v27;
    v38 = v28;
    v39 = v29;
    LODWORD(v40) = v34;
    v16 = [v26 fusedInstanceNormalizationAndNeuronLayerWithDescriptor:v27 numOfFeatureChannels:v38 mean:v29 variance:v30 beta:v31 gamma:v32 varianceEpsilon:v40 momentum:v36];

    v41 = v54;
  }

  else
  {
    v41 = [v8 computeEngine];
    v42 = [(MLCInstanceNormalizationLayer *)self featureChannelCount];
    v26 = [(MLCInstanceNormalizationLayer *)self mean];
    v43 = [(MLCInstanceNormalizationLayer *)self variance];
    v44 = [(MLCInstanceNormalizationLayer *)self beta];
    v30 = [(MLCInstanceNormalizationLayer *)self gamma];
    [(MLCInstanceNormalizationLayer *)self varianceEpsilon];
    v46 = v45;
    [(MLCInstanceNormalizationLayer *)self momentum];
    LODWORD(v48) = v47;
    v37 = v43;
    v39 = v44;
    LODWORD(v49) = v46;
    v16 = [v41 instanceNormalizationLayerWithChannelCount:v42 mean:v26 variance:v43 beta:v44 gamma:v30 varianceEpsilon:v49 momentum:v48];
  }

  if (!v16 || ![v16 count])
  {
    v52 = +[MLCLog framework];
    v8 = v55;
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      [MLCScatterLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_26;
  }

  v8 = v55;
  v50 = [v55 computeEngine];
  v51 = [v50 compileLayerDeviceOps:v16 sourceTensors:v58 resultTensor:v57];

  v59.receiver = self;
  v59.super_class = MLCInstanceNormalizationLayer;
  [(MLCLayer *)&v59 bindDevice:v55 deviceOps:v16];
LABEL_27:

  return v51;
}

- (BOOL)allocateDataForOptimizer:(id)a3
{
  v4 = a3;
  v5 = [(MLCInstanceNormalizationLayer *)self beta];

  if (v5)
  {
    v6 = [(MLCInstanceNormalizationLayer *)self betaParameter];
    v7 = [(MLCLayer *)self device];
    [v6 allocateDataForOptimizer:v4 device:v7 isVector:1];
  }

  v8 = [(MLCInstanceNormalizationLayer *)self gamma];

  if (v8)
  {
    v9 = [(MLCInstanceNormalizationLayer *)self gammaParameter];
    v10 = [(MLCLayer *)self device];
    [v9 allocateDataForOptimizer:v4 device:v10 isVector:1];
  }

  v11 = [(MLCLayer *)self device];
  v12 = [v11 computeEngine];
  v13 = [(MLCLayer *)self deviceOps];
  v14 = [(MLCInstanceNormalizationLayer *)self beta];
  v15 = [(MLCInstanceNormalizationLayer *)self gamma];
  [v12 setNormalizationLayerOptimizerDataForDeviceOps:v13 beta:v14 gamma:v15];

  return 1;
}

- (unint64_t)allocatedDataSizeForTraining:(BOOL)a3 optimizer:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(MLCInstanceNormalizationLayer *)self beta];
  v8 = [v7 descriptor];
  v9 = [v8 tensorAllocationSizeInBytes];
  v10 = [(MLCInstanceNormalizationLayer *)self gamma];
  v11 = [v10 descriptor];
  v12 = [v11 tensorAllocationSizeInBytes] + v9;

  if (v4)
  {
    v13 = [(MLCInstanceNormalizationLayer *)self gamma];
    v14 = [v13 descriptor];
    v15 = [v14 tensorAllocationSizeInBytes];
    v16 = [(MLCInstanceNormalizationLayer *)self beta];
    v17 = [v16 descriptor];
    v18 = [v17 tensorAllocationSizeInBytes] + v15;
    v12 += v18 * [v6 numOptimizerDataBuffers];
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCInstanceNormalizationLayer *)self beta];
  v7 = [(MLCInstanceNormalizationLayer *)self gamma];
  [(MLCInstanceNormalizationLayer *)self varianceEpsilon];
  v9 = v8;
  v10 = [(MLCLayer *)self conditionalTreeNode];
  v11 = [(MLCLayer *)self resultTensors];
  v12 = [v3 stringWithFormat:@"%@: { beta=%@ : gamma=%@ : varianceEpsilon=%f : conditionalTreeNode=%@ : resultTensor=%@ }", v5, v6, v7, *&v9, v10, v11];

  return v12;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCLayer *)self layerID];
  v7 = [(MLCInstanceNormalizationLayer *)self featureChannelCount];
  [(MLCInstanceNormalizationLayer *)self varianceEpsilon];
  v9 = v8;
  [(MLCInstanceNormalizationLayer *)self momentum];
  v11 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Feature Channel Count: %lu    Variance Epsilon: %.03f<BR />Momentum: %.03f</FONT>>", v5, v6, v7, *&v9, v10];

  return v11;
}

- (void)linkAssociatedTensors
{
  v3 = [(MLCInstanceNormalizationLayer *)self beta];
  v4 = [v3 childLayers];
  [v4 addObject:self];

  v6 = [(MLCInstanceNormalizationLayer *)self gamma];
  v5 = [v6 childLayers];
  [v5 addObject:self];
}

- (void)unlinkAssociatedTensors
{
  v3 = [(MLCInstanceNormalizationLayer *)self beta];
  v4 = [v3 childLayers];
  [v4 removeObject:self];

  v6 = [(MLCInstanceNormalizationLayer *)self gamma];
  v5 = [v6 childLayers];
  [v5 removeObject:self];
}

- (BOOL)isValidTrainingParameters
{
  v3 = [(MLCInstanceNormalizationLayer *)self beta];
  if (v3)
  {
    v4 = [(MLCInstanceNormalizationLayer *)self gamma];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)parametersCount
{
  v3 = [(MLCInstanceNormalizationLayer *)self betaParameter];

  v4 = [(MLCInstanceNormalizationLayer *)self gammaParameter];

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