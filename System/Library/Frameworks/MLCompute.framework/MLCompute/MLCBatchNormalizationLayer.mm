@interface MLCBatchNormalizationLayer
+ (MLCBatchNormalizationLayer)layerWithFeatureChannelCount:(NSUInteger)featureChannelCount mean:(MLCTensor *)mean variance:(MLCTensor *)variance beta:(MLCTensor *)beta gamma:(MLCTensor *)gamma varianceEpsilon:(float)varianceEpsilon momentum:(float)momentum;
- (BOOL)allocateDataForOptimizer:(id)a3;
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (BOOL)isSupportedShapeForTensorSources:(id)a3;
- (BOOL)isValidTrainingParameters;
- (MLCBatchNormalizationLayer)initWithFeatureChannelCount:(unint64_t)a3 mean:(id)a4 variance:(id)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8 momentum:(float)a9;
- (id)description;
- (id)summarizedDOTDescription;
- (unint64_t)allocatedDataSizeForTraining:(BOOL)a3 optimizer:(id)a4;
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
  v20 = [a1 alloc];
  *&v21 = varianceEpsilon;
  *&v22 = momentum;
  v23 = [v20 initWithFeatureChannelCount:featureChannelCount mean:v19 variance:v18 beta:v17 gamma:v16 varianceEpsilon:v21 momentum:v22];

  return v23;
}

- (MLCBatchNormalizationLayer)initWithFeatureChannelCount:(unint64_t)a3 mean:(id)a4 variance:(id)a5 beta:(id)a6 gamma:(id)a7 varianceEpsilon:(float)a8 momentum:(float)a9
{
  v15 = a4;
  obj = a5;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = [v15 descriptor];
  v20 = [v19 shape];
  v21 = [v20 objectAtIndexedSubscript:0];
  if ([v21 unsignedIntegerValue] > 1)
  {
    goto LABEL_4;
  }

  v71 = a6;
  v72 = a7;
  v81 = self;
  v22 = [v15 descriptor];
  v23 = [v22 shape];
  v24 = [v23 objectAtIndexedSubscript:3];
  if ([v24 unsignedIntegerValue] > 1)
  {

    self = v81;
LABEL_4:

    goto LABEL_5;
  }

  [v15 descriptor];
  v28 = v75 = v15;
  [v28 shape];
  v29 = v74 = v16;
  [v29 objectAtIndexedSubscript:2];
  v30 = v73 = v17;
  v76 = v18;
  v31 = [v30 unsignedIntegerValue];

  v17 = v73;
  v16 = v74;

  v15 = v75;
  v32 = v31 > 1;
  v18 = v76;
  self = v81;
  if (v32)
  {
LABEL_5:
    v25 = +[MLCLog framework];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [MLCBatchNormalizationLayer initWithFeatureChannelCount:a2 mean:? variance:? beta:? gamma:? varianceEpsilon:? momentum:?];
    }

LABEL_7:

    v26 = 0;
    goto LABEL_8;
  }

  v33 = [v74 descriptor];
  v34 = [v33 shape];
  v35 = [v34 objectAtIndexedSubscript:0];
  if ([v35 unsignedIntegerValue] > 1)
  {
    goto LABEL_13;
  }

  v36 = [v74 descriptor];
  v37 = [v36 shape];
  v38 = [v37 objectAtIndexedSubscript:3];
  if ([v38 unsignedIntegerValue] > 1)
  {

    self = v81;
LABEL_13:

    goto LABEL_14;
  }

  v39 = [v74 descriptor];
  v40 = [v39 shape];
  v41 = [v40 objectAtIndexedSubscript:2];
  v42 = [v41 unsignedIntegerValue];

  v16 = v74;
  v15 = v75;

  v18 = v76;
  v32 = v42 > 1;
  v17 = v73;
  self = v81;
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
    v43 = [v73 descriptor];
    v44 = [v43 shape];
    v45 = [v44 objectAtIndexedSubscript:0];
    if ([v45 unsignedIntegerValue] > 1)
    {
LABEL_21:

      goto LABEL_22;
    }

    v46 = [v73 descriptor];
    v47 = [v46 shape];
    v48 = [v47 objectAtIndexedSubscript:3];
    if ([v48 unsignedIntegerValue] > 1)
    {

      self = v81;
      goto LABEL_21;
    }

    v49 = [v73 descriptor];
    v50 = [v49 shape];
    v51 = [v50 objectAtIndexedSubscript:2];
    v52 = [v51 unsignedIntegerValue];

    v16 = v74;
    v15 = v75;

    v18 = v76;
    v32 = v52 > 1;
    v17 = v73;
    self = v81;
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

  if (v18)
  {
    v53 = [v18 descriptor];
    v54 = [v53 shape];
    v55 = [v54 objectAtIndexedSubscript:0];
    if ([v55 unsignedIntegerValue] > 1)
    {
LABEL_29:

      goto LABEL_30;
    }

    v56 = [v18 descriptor];
    v57 = [v56 shape];
    v58 = [v57 objectAtIndexedSubscript:3];
    if ([v58 unsignedIntegerValue] > 1)
    {

      self = v81;
      goto LABEL_29;
    }

    v59 = [v18 descriptor];
    v60 = [v59 shape];
    v61 = [v60 objectAtIndexedSubscript:2];
    v62 = [v61 unsignedIntegerValue];

    v16 = v74;
    v15 = v75;

    v18 = v76;
    v32 = v62 > 1;
    v17 = v73;
    self = v81;
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

  if ((v17 == 0) != (v18 == 0))
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
    v63->_featureChannelCount = a3;
    objc_storeStrong(&v63->_mean, a4);
    objc_storeStrong(&v64->_variance, obj);
    objc_storeStrong(&v64->_beta, v71);
    objc_storeStrong(&v64->_gamma, v72);
    v64->_varianceEpsilon = a8;
    v64->_momentum = a9;
    [(MLCTensor *)v64->_mean setIsLayerParameter:1];
    [(MLCTensor *)v64->_variance setIsLayerParameter:1];
    if (v17)
    {
      v65 = [MLCTensorParameter parameterWithTensor:v17];
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
  v26 = self;
  v18 = v76;
LABEL_8:

  return v26;
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(MLCBatchNormalizationLayer *)self mean];
  v12 = [v11 parentLayers];
  v13 = [v12 count];

  if (!v13)
  {
    v14 = [&unk_284BA5FD8 mutableCopy];
    if ([v8 type] == 3)
    {
      [v14 addObject:&unk_284BA57B0];
    }

    v16 = [(MLCBatchNormalizationLayer *)self mean];
    v17 = [v16 isTensorDataTypeInListOfDataTypes:v14];

    if ((v17 & 1) == 0)
    {
      v21 = +[MLCLog framework];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [MLCBatchNormalizationLayer compileForDevice:sourceTensors:resultTensor:];
      }

      goto LABEL_13;
    }

    v18 = [(MLCBatchNormalizationLayer *)self variance];
    v19 = [v18 parentLayers];
    v20 = [v19 count];

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
      v23 = [(MLCBatchNormalizationLayer *)self variance];
      v24 = [v23 isTensorDataTypeInListOfDataTypes:v14];

      if ((v24 & 1) == 0)
      {
        v21 = +[MLCLog framework];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [MLCBatchNormalizationLayer compileForDevice:sourceTensors:resultTensor:];
        }

        goto LABEL_13;
      }

      v25 = [(MLCBatchNormalizationLayer *)self beta];

      if (!v25)
      {
        goto LABEL_24;
      }

      v26 = [(MLCBatchNormalizationLayer *)self beta];
      v27 = [v26 isTensorDataTypeInListOfDataTypes:v14];

      if ((v27 & 1) == 0)
      {
        v21 = +[MLCLog framework];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [MLCBatchNormalizationLayer compileForDevice:sourceTensors:resultTensor:];
        }

        goto LABEL_13;
      }

      v28 = [(MLCBatchNormalizationLayer *)self beta];
      v29 = [v28 parentLayers];
      v30 = [v29 count];

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
        v31 = [(MLCBatchNormalizationLayer *)self gamma];

        if (!v31)
        {
          goto LABEL_31;
        }

        v32 = [(MLCBatchNormalizationLayer *)self gamma];
        v33 = [v32 isTensorDataTypeInListOfDataTypes:v14];

        if ((v33 & 1) == 0)
        {
          v21 = +[MLCLog framework];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [MLCBatchNormalizationLayer compileForDevice:sourceTensors:resultTensor:];
          }

          goto LABEL_13;
        }

        v34 = [(MLCBatchNormalizationLayer *)self gamma];
        v35 = [v34 parentLayers];
        v36 = [v35 count];

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
          v37 = [(MLCLayer *)self fusedLayers];
          v38 = [v37 count];

          if (v38)
          {
            v39 = [(MLCLayer *)self fusedLayers];
            v64 = [v39 objectAtIndexedSubscript:0];

            v40 = [v8 computeEngine];
            v69 = [v64 descriptor];
            v67 = [(MLCBatchNormalizationLayer *)self featureChannelCount];
            v41 = [(MLCBatchNormalizationLayer *)self mean];
            v65 = [(MLCBatchNormalizationLayer *)self variance];
            v63 = [(MLCBatchNormalizationLayer *)self beta];
            v42 = [(MLCBatchNormalizationLayer *)self gamma];
            [(MLCBatchNormalizationLayer *)self varianceEpsilon];
            v44 = v43;
            [(MLCBatchNormalizationLayer *)self momentum];
            LODWORD(v46) = v45;
            v47 = v67;
            v68 = v41;
            v48 = v41;
            v49 = v65;
            LODWORD(v50) = v44;
            v21 = [v40 fusedBatchNormalizationAndNeuronLayerWithDescriptor:v69 numOfFeatureChannels:v47 mean:v48 variance:v65 beta:v63 gamma:v42 varianceEpsilon:v50 momentum:v46];

            v51 = v64;
          }

          else
          {
            v51 = [v8 computeEngine];
            v70 = [(MLCBatchNormalizationLayer *)self featureChannelCount];
            v40 = [(MLCBatchNormalizationLayer *)self mean];
            v52 = [(MLCBatchNormalizationLayer *)self variance];
            v53 = [(MLCBatchNormalizationLayer *)self beta];
            v66 = [(MLCBatchNormalizationLayer *)self gamma];
            [(MLCBatchNormalizationLayer *)self varianceEpsilon];
            v55 = v54;
            [(MLCBatchNormalizationLayer *)self momentum];
            LODWORD(v57) = v56;
            v58 = v70;
            v68 = v53;
            v69 = v52;
            v59 = v53;
            v49 = v66;
            LODWORD(v60) = v55;
            v21 = [v51 batchNormalizationLayerWithChannelCount:v58 mean:v40 variance:v52 beta:v59 gamma:v66 varianceEpsilon:v60 momentum:v57];
          }

          if (v21 && [v21 count])
          {
            v61 = [v8 computeEngine];
            v15 = [v61 compileLayerDeviceOps:v21 sourceTensors:v9 resultTensor:v10];

            v71.receiver = self;
            v71.super_class = MLCBatchNormalizationLayer;
            [(MLCLayer *)&v71 bindDevice:v8 deviceOps:v21];
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

- (BOOL)allocateDataForOptimizer:(id)a3
{
  v4 = a3;
  v5 = [(MLCBatchNormalizationLayer *)self beta];

  if (v5)
  {
    v6 = [(MLCBatchNormalizationLayer *)self betaParameter];
    v7 = [(MLCLayer *)self device];
    [v6 allocateDataForOptimizer:v4 device:v7 isVector:1];
  }

  v8 = [(MLCBatchNormalizationLayer *)self gamma];

  if (v8)
  {
    v9 = [(MLCBatchNormalizationLayer *)self gammaParameter];
    v10 = [(MLCLayer *)self device];
    [v9 allocateDataForOptimizer:v4 device:v10 isVector:1];
  }

  v11 = [(MLCLayer *)self device];
  v12 = [v11 computeEngine];
  v13 = [(MLCLayer *)self deviceOps];
  v14 = [(MLCBatchNormalizationLayer *)self beta];
  v15 = [(MLCBatchNormalizationLayer *)self gamma];
  [v12 setNormalizationLayerOptimizerDataForDeviceOps:v13 beta:v14 gamma:v15];

  return 1;
}

- (unint64_t)allocatedDataSizeForTraining:(BOOL)a3 optimizer:(id)a4
{
  v31 = a3;
  v27 = a4;
  v5 = [(MLCBatchNormalizationLayer *)self mean];
  v6 = [v5 descriptor];
  v30 = [v6 tensorAllocationSizeInBytes];
  v7 = [(MLCBatchNormalizationLayer *)self variance];
  v8 = [v7 descriptor];
  v29 = [v8 tensorAllocationSizeInBytes];
  v9 = [(MLCBatchNormalizationLayer *)self beta];
  v10 = [v9 descriptor];
  v28 = [v10 tensorAllocationSizeInBytes];
  v11 = [(MLCBatchNormalizationLayer *)self gamma];
  v12 = [v11 descriptor];
  v13 = [v12 tensorAllocationSizeInBytes];

  v14 = [(MLCBatchNormalizationLayer *)self mean];
  v15 = [v14 descriptor];
  v16 = [v15 tensorAllocationSizeInBytes];
  v17 = [(MLCBatchNormalizationLayer *)self variance];
  v18 = [v17 descriptor];
  v19 = v29 + v30 + v28 + v13 + v16 + [v18 tensorAllocationSizeInBytes];

  if (v31)
  {
    v20 = [(MLCBatchNormalizationLayer *)self gamma];
    v21 = [v20 descriptor];
    v22 = [v21 tensorAllocationSizeInBytes];
    v23 = [(MLCBatchNormalizationLayer *)self beta];
    v24 = [v23 descriptor];
    v25 = [v24 tensorAllocationSizeInBytes] + v22;
    v19 += v25 * [v27 numOptimizerDataBuffers];
  }

  return v19;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCBatchNormalizationLayer *)self mean];
  v7 = [(MLCBatchNormalizationLayer *)self variance];
  v8 = [(MLCBatchNormalizationLayer *)self beta];
  v9 = [(MLCBatchNormalizationLayer *)self gamma];
  [(MLCBatchNormalizationLayer *)self varianceEpsilon];
  v11 = v10;
  v12 = [(MLCLayer *)self conditionalTreeNode];
  v13 = [(MLCLayer *)self resultTensors];
  v14 = [v3 stringWithFormat:@"%@: { mean=%@ : variance=%@ : beta=%@ : gamma=%@ : varianceEpsilon=%f : conditionalTreeNode=%@ : resultTensor=%@ }", v5, v6, v7, v8, v9, *&v11, v12, v13];

  return v14;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCLayer *)self layerID];
  v7 = [(MLCBatchNormalizationLayer *)self featureChannelCount];
  [(MLCBatchNormalizationLayer *)self varianceEpsilon];
  v9 = v8;
  [(MLCBatchNormalizationLayer *)self momentum];
  v11 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Feature Channel Count: %lu    Variance Epsilon: %.03f<BR />Momentum: %.03f</FONT>>", v5, v6, v7, *&v9, v10];

  return v11;
}

- (void)linkAssociatedTensors
{
  v3 = [(MLCBatchNormalizationLayer *)self mean];
  v4 = [v3 childLayers];
  [v4 addObject:self];

  v5 = [(MLCBatchNormalizationLayer *)self variance];
  v6 = [v5 childLayers];
  [v6 addObject:self];

  v7 = [(MLCBatchNormalizationLayer *)self beta];
  v8 = [v7 childLayers];
  [v8 addObject:self];

  v10 = [(MLCBatchNormalizationLayer *)self gamma];
  v9 = [v10 childLayers];
  [v9 addObject:self];
}

- (void)unlinkAssociatedTensors
{
  v3 = [(MLCBatchNormalizationLayer *)self mean];
  v4 = [v3 childLayers];
  [v4 removeObject:self];

  v5 = [(MLCBatchNormalizationLayer *)self variance];
  v6 = [v5 childLayers];
  [v6 removeObject:self];

  v7 = [(MLCBatchNormalizationLayer *)self beta];
  v8 = [v7 childLayers];
  [v8 removeObject:self];

  v10 = [(MLCBatchNormalizationLayer *)self gamma];
  v9 = [v10 childLayers];
  [v9 removeObject:self];
}

- (BOOL)isValidTrainingParameters
{
  v3 = [(MLCBatchNormalizationLayer *)self beta];
  if (v3)
  {
    v4 = [(MLCBatchNormalizationLayer *)self gamma];
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
  v3 = [(MLCBatchNormalizationLayer *)self betaParameter];

  v4 = [(MLCBatchNormalizationLayer *)self gammaParameter];

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