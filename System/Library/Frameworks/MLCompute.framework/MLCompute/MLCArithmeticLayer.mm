@interface MLCArithmeticLayer
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (BOOL)isSupportedShapeForTensorSources:(id)a3;
- (BOOL)skipGradientComputationForSourceTensor:(id)a3 resultTensor:(id)a4;
- (MLCArithmeticLayer)initWithArithmeticOperation:(int)a3;
- (id)description;
- (id)resultTensorFromSources:(id)a3;
- (id)summarizedDOTDescription;
- (unint64_t)deviceMemorySizeWithOptimizer:(id)a3 device:(id)a4;
@end

@implementation MLCArithmeticLayer

- (BOOL)skipGradientComputationForSourceTensor:(id)a3 resultTensor:(id)a4
{
  v30 = a3;
  v6 = a4;
  if ([(MLCArithmeticLayer *)self operation]&& [(MLCArithmeticLayer *)self operation]!= MLCArithmeticOperationSubtract)
  {
    goto LABEL_9;
  }

  v7 = [v6 descriptor];
  v8 = [v7 shape];
  v9 = [v8 count];
  v10 = [v30 descriptor];
  v11 = [v10 shape];
  v12 = [v11 count];

  if (v9 == v12)
  {
    v13 = [v6 descriptor];
    v14 = [v13 shape];
    v15 = [v14 count];

    if (v15)
    {
      v16 = 0;
      do
      {
        v17 = [v6 descriptor];
        v18 = [v17 shape];
        v19 = [v18 objectAtIndexedSubscript:v16];
        v20 = [v19 unsignedIntegerValue];
        v21 = [v30 descriptor];
        v22 = [v21 shape];
        v23 = [v22 objectAtIndexedSubscript:v16];
        v24 = [v23 unsignedIntegerValue];

        v25 = v20 == v24;
        if (v20 != v24)
        {
          break;
        }

        ++v16;
        v26 = [v6 descriptor];
        v27 = [v26 shape];
        v28 = [v27 count];
      }

      while (v16 < v28);
    }

    else
    {
      v25 = 1;
    }
  }

  else
  {
LABEL_9:
    v25 = 0;
  }

  return v25;
}

- (MLCArithmeticLayer)initWithArithmeticOperation:(int)a3
{
  v6.receiver = self;
  v6.super_class = MLCArithmeticLayer;
  result = [(MLCLayer *)&v6 initWithLabel:@"Arithmetic"];
  if (result)
  {
    result->_operation = a3;
    if (a3 > 0x1D || (v5 = 1, ((1 << a3) & 0x3C20000F) == 0))
    {
      v5 = 0;
    }

    result->_binaryOperation = v5;
  }

  return result;
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 count];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    while (1)
    {
      v14 = [v9 objectAtIndexedSubscript:v13];
      v15 = [v14 descriptor];
      v16 = [v15 dataType];

      if (![(MLCLayer *)MLCArithmeticLayer supportsDataType:v16 onDevice:v8])
      {
        break;
      }

      if (v12 == ++v13)
      {
        goto LABEL_5;
      }
    }

    v18 = +[MLCLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(a2);
      *buf = 138413058;
      v46 = v19;
      v47 = 2048;
      v48 = v13;
      v49 = 1024;
      v50 = v16;
      v51 = 2112;
      v52 = v8;
      _os_log_error_impl(&dword_238C1D000, v18, OS_LOG_TYPE_ERROR, "%@: sourceTensor[%lu] uses unsupported data type = %d on a device = %@", buf, 0x26u);
    }

    goto LABEL_15;
  }

LABEL_5:
  v17 = [(MLCArithmeticLayer *)self operation];
  if (v17 > MLCArithmeticOperationMax)
  {
    v18 = +[MLCLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MLCArithmeticLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_15;
  }

  if (((1 << v17) & 0x3DFFFF0) != 0)
  {
    if ([v9 count] != 1)
    {
      v18 = +[MLCLog framework];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [MLCArithmeticLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
      }

LABEL_15:
      v20 = 0;
      goto LABEL_31;
    }
  }

  else if ([v9 count] <= 1)
  {
    v18 = +[MLCLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MLCArithmeticLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_15;
  }

  v21 = [(MLCLayer *)self fusedLayers];
  v22 = [v21 count];

  if (v22)
  {
    v23 = [(MLCLayer *)self fusedLayers];
    v24 = [v23 objectAtIndexedSubscript:0];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v26 = [(MLCLayer *)self fusedLayers];
    v27 = [v26 objectAtIndexedSubscript:0];

    if (isKindOfClass)
    {
      v22 = [v27 descriptor];
    }

    else
    {
      v28 = [v8 computeEngine];
      v29 = [v28 arithmeticLayerWithOperation:objc_msgSend(v27 activationDescriptor:{"operation"), 0}];

      v30 = [v8 computeEngine];
      v31 = [(MLCLayer *)self fusedLayers];
      v32 = [v31 objectAtIndexedSubscript:0];
      v33 = [v32 sourceTensors];
      [v30 compileLayerDeviceOps:v29 sourceTensors:v33 resultTensor:v10];

      [v27 bindDevice:v8 deviceOps:v29];
      v22 = 0;
    }
  }

  v34 = [v8 computeEngine];
  v18 = [v34 arithmeticLayerWithOperation:-[MLCArithmeticLayer operation](self activationDescriptor:{"operation"), v22}];

  if (v18 && [v18 count])
  {
    v35 = [v8 computeEngine];
    v20 = [v35 compileLayerDeviceOps:v18 sourceTensors:v9 resultTensor:v10];

    v44.receiver = self;
    v44.super_class = MLCArithmeticLayer;
    [(MLCLayer *)&v44 bindDevice:v8 deviceOps:v18];
    if ([v9 count] == 2)
    {
      v36 = [v9 objectAtIndexedSubscript:0];
      v37 = [(MLCArithmeticLayer *)self skipGradientComputationForSourceTensor:v36 resultTensor:v10];

      v38 = [v9 objectAtIndexedSubscript:1];
      v39 = [(MLCArithmeticLayer *)self skipGradientComputationForSourceTensor:v38 resultTensor:v10];

      if (v37 && v39)
      {
        [(MLCLayer *)self setAllocateGradientTensors:0];
      }
    }
  }

  else
  {
    v40 = +[MLCLog framework];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [MLCScatterLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    v20 = 0;
  }

LABEL_31:
  v41 = *MEMORY[0x277D85DE8];
  return v20;
}

- (unint64_t)deviceMemorySizeWithOptimizer:(id)a3 device:(id)a4
{
  v5 = a4;
  v6 = [(MLCLayer *)self sourceTensors];
  v7 = [v6 objectAtIndexedSubscript:0];
  v8 = [(MLCLayer *)self resultTensors];
  v9 = [v8 objectAtIndexedSubscript:0];
  v10 = [(MLCArithmeticLayer *)self skipGradientComputationForSourceTensor:v7 resultTensor:v9];

  v11 = [(MLCLayer *)self sourceTensors];
  v12 = [v11 count];

  if (v12 == 2)
  {
    v13 = [(MLCLayer *)self sourceTensors];
    v14 = [v13 objectAtIndexedSubscript:1];
    v15 = [(MLCLayer *)self resultTensors];
    v16 = [v15 objectAtIndexedSubscript:0];
    v17 = [(MLCArithmeticLayer *)self skipGradientComputationForSourceTensor:v14 resultTensor:v16];
  }

  else
  {
    v17 = 0;
  }

  v18 = [v5 computeEngine];
  v19 = [(MLCLayer *)self resultTensors];
  v20 = [v19 objectAtIndexedSubscript:0];
  v21 = [v18 deviceMemorySizeForTensor:v20];

  if (![(MLCLayer *)self isTrainable])
  {
    goto LABEL_11;
  }

  v22 = [(MLCLayer *)self intermediateGradientTensors];
  v23 = [v22 count];

  if (!v23)
  {
    v33 = [(MLCLayer *)self sourceGradientTensors];
    v34 = [v33 objectAtIndexedSubscript:0];
    v35 = [v34 sharedMemoryTensor];

    if (!v35)
    {
      v48 = [v5 computeEngine];
      v49 = [(MLCLayer *)self sourceGradientTensors];
      v50 = [v49 objectAtIndexedSubscript:0];
      v27 = [v48 deviceMemorySizeForTensor:v50];

      goto LABEL_12;
    }

LABEL_11:
    v27 = 0;
    goto LABEL_12;
  }

  v24 = [(MLCLayer *)self intermediateGradientTensors];
  v25 = [v24 count];

  if (!v25)
  {
    goto LABEL_11;
  }

  v26 = 0;
  v27 = 0;
  do
  {
    v28 = [v5 computeEngine];
    v29 = [(MLCLayer *)self intermediateGradientTensors];
    v30 = [v29 objectAtIndexedSubscript:v26];
    v27 += [v28 deviceMemorySizeForTensor:v30];

    ++v26;
    v31 = [(MLCLayer *)self intermediateGradientTensors];
    v32 = [v31 count];
  }

  while (v26 < v32);
LABEL_12:
  v36 = v27 + v21;
  if ([(MLCLayer *)self isTrainable])
  {
    if ([v5 type])
    {
      if (v10)
      {
        v37 = [v5 computeEngine];
        v38 = [(MLCLayer *)self sourceGradientTensors];
        v39 = [v38 objectAtIndexedSubscript:0];
        v36 -= [v37 deviceMemorySizeForTensor:v39];
      }

      if (v17)
      {
        v40 = [v5 computeEngine];
        v41 = [(MLCLayer *)self sourceGradientTensors];
        v42 = [v41 objectAtIndexedSubscript:0];
        v36 -= [v40 deviceMemorySizeForTensor:v42];
LABEL_20:
      }
    }

    else if (v10 && v17)
    {
      v43 = [v5 computeEngine];
      v44 = [(MLCLayer *)self sourceGradientTensors];
      v45 = [v44 objectAtIndexedSubscript:0];
      v46 = [v43 deviceMemorySizeForTensor:v45];

      v40 = [v5 computeEngine];
      v41 = [(MLCLayer *)self sourceGradientTensors];
      v42 = [v41 objectAtIndexedSubscript:0];
      v36 -= v46 + [v40 deviceMemorySizeForTensor:v42];
      goto LABEL_20;
    }
  }

  return v36;
}

- (id)resultTensorFromSources:(id)a3
{
  v4 = a3;
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v5 descriptor];
  v9.receiver = self;
  v9.super_class = MLCArithmeticLayer;
  v7 = -[MLCLayer resultTensorsFromBroadcastableSources:resultTensorDataType:](&v9, sel_resultTensorsFromBroadcastableSources_resultTensorDataType_, v4, [v6 dataType]);

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCArithmeticLayer *)self operation];
  v7 = [(MLCLayer *)self conditionalTreeNode];
  v8 = [(MLCLayer *)self resultTensors];
  v9 = [v3 stringWithFormat:@"%@: { operation=%d : conditionalTreeNode=%@ : resultTensor=%@ }", v5, v6, v7, v8];

  return v9;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCLayer *)self layerID];
  v7 = MLCArithmeticOperationDebugDescription([(MLCArithmeticLayer *)self operation]);
  v8 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Operation: %@<BR /></FONT>>", v5, v6, v7];

  return v8;
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

      if (v8 > 1)
      {
        goto LABEL_10;
      }
    }

    while (++v4 < [v3 count]);
  }

  if (![v3 count])
  {
LABEL_10:
    v14 = 1;
    goto LABEL_11;
  }

  v9 = 0;
  do
  {
    v10 = [v3 objectAtIndexedSubscript:v9];
    v11 = [v10 descriptor];
    v12 = [v11 shape];
    v13 = [v12 count];

    v14 = v13 == 1;
    if (v13 != 1)
    {
      break;
    }

    ++v9;
  }

  while (v9 < [v3 count]);
LABEL_11:

  return v14;
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

@end