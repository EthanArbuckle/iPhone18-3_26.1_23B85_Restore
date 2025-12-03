@interface MLCMatMulLayer
+ (MLCMatMulLayer)layerWithDescriptor:(MLCMatMulDescriptor *)descriptor;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (BOOL)isSupportedShapeForTensorSources:(id)sources;
- (MLCMatMulLayer)initWithDescriptor:(id)descriptor;
- (id)description;
- (id)resultTensorFromSources:(id)sources;
- (id)summarizedDOTDescription;
@end

@implementation MLCMatMulLayer

+ (MLCMatMulLayer)layerWithDescriptor:(MLCMatMulDescriptor *)descriptor
{
  v4 = descriptor;
  v5 = [[self alloc] initWithDescriptor:v4];

  return v5;
}

- (MLCMatMulLayer)initWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v9.receiver = self;
  v9.super_class = MLCMatMulLayer;
  v6 = [(MLCLayer *)&v9 initWithLabel:@"MatMul"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_descriptor, descriptor);
  }

  return v7;
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v65 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v12 = tensorCopy;
  if (!tensorsCopy)
  {
    v19 = +[MLCLog framework];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MLCConcatenationLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_31;
  }

  if (!tensorCopy)
  {
    v19 = +[MLCLog framework];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MLCMatMulLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_31;
  }

  selfCopy = self;
  v13 = [tensorsCopy count];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    while (1)
    {
      v16 = [tensorsCopy objectAtIndexedSubscript:v15];
      descriptor = [v16 descriptor];
      dataType = [descriptor dataType];

      if (![(MLCLayer *)MLCMatMulLayer supportsDataType:dataType onDevice:deviceCopy])
      {
        break;
      }

      if (v14 == ++v15)
      {
        goto LABEL_7;
      }
    }

    v19 = +[MLCLog framework];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v52 = NSStringFromSelector(a2);
      *buf = 138413058;
      v58 = v52;
      v59 = 2048;
      v60 = v15;
      v61 = 1024;
      v62 = dataType;
      v63 = 2112;
      v64 = deviceCopy;
      _os_log_error_impl(&dword_238C1D000, v19, OS_LOG_TYPE_ERROR, "%@: sourceTensor[%lu] uses unsupported data type = %d on a device = %@", buf, 0x26u);
    }

    goto LABEL_31;
  }

LABEL_7:
  if ([tensorsCopy count] > 1)
  {
    v54 = a2;
    v20 = selfCopy;
    v21 = [(MLCMatMulLayer *)selfCopy resultTensorFromSources:tensorsCopy];
    v19 = v21;
    if (!v21)
    {
      goto LABEL_33;
    }

    descriptor2 = [v21 descriptor];
    shape = [descriptor2 shape];
    descriptor3 = [v12 descriptor];
    shape2 = [descriptor3 shape];
    v26 = [shape isEqualToArray:shape2];

    if (v26)
    {
      if ([tensorsCopy count] == 3)
      {
        v27 = [tensorsCopy objectAtIndexedSubscript:2];
        descriptor4 = [v27 descriptor];
        shape3 = [descriptor4 shape];
        v30 = [shape3 mutableCopy];

        v31 = [v30 count];
        descriptor5 = [v12 descriptor];
        dimensionCount = [descriptor5 dimensionCount];

        if (v31 < dimensionCount)
        {
          do
          {
            [v30 insertObject:&unk_284BA5E70 atIndex:0];
            ++v31;
            descriptor6 = [v12 descriptor];
            dimensionCount2 = [descriptor6 dimensionCount];
          }

          while (v31 < dimensionCount2);
        }

        descriptor7 = [v12 descriptor];
        shape4 = [descriptor7 shape];

        if ([shape4 count])
        {
          v38 = 0;
          while (1)
          {
            v39 = [v30 objectAtIndexedSubscript:v38];
            unsignedIntegerValue = [v39 unsignedIntegerValue];

            v41 = [shape4 objectAtIndexedSubscript:v38];
            unsignedIntegerValue2 = [v41 unsignedIntegerValue];

            if (unsignedIntegerValue2 != 1 && unsignedIntegerValue != 1 && unsignedIntegerValue != unsignedIntegerValue2)
            {
              break;
            }

            if (++v38 >= [shape4 count])
            {
              goto LABEL_25;
            }
          }

          v53 = +[MLCLog framework];
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            [MLCMatMulLayer compileForDevice:v54 sourceTensors:? resultTensor:?];
          }

          goto LABEL_35;
        }

LABEL_25:

        v20 = selfCopy;
      }

      computeEngine = [deviceCopy computeEngine];
      descriptor8 = [(MLCMatMulLayer *)v20 descriptor];
      v45 = v20;
      v46 = descriptor8;
      v30 = [computeEngine matMulLayerWithDescriptor:descriptor8 sourceTensors:tensorsCopy resultTensor:v12 inferenceOnly:{-[MLCLayer compileForInferenceOnly](v45, "compileForInferenceOnly")}];

      if (v30 && [v30 count])
      {
        computeEngine2 = [deviceCopy computeEngine];
        v48 = [computeEngine2 compileLayerDeviceOps:v30 sourceTensors:tensorsCopy resultTensor:v12];

        v56.receiver = selfCopy;
        v56.super_class = MLCMatMulLayer;
        [(MLCLayer *)&v56 bindDevice:deviceCopy deviceOps:v30];
LABEL_36:

        goto LABEL_32;
      }

      v51 = +[MLCLog framework];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [MLCScatterLayer compileForDevice:v54 sourceTensors:? resultTensor:?];
      }
    }

    else
    {
LABEL_33:
      v30 = +[MLCLog framework];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [MLCMatMulLayer compileForDevice:v54 sourceTensors:? resultTensor:?];
      }
    }

LABEL_35:
    v48 = 0;
    goto LABEL_36;
  }

  v19 = +[MLCLog framework];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    [MLCMatMulLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
  }

LABEL_31:
  v48 = 0;
LABEL_32:

  v49 = *MEMORY[0x277D85DE8];
  return v48;
}

- (id)resultTensorFromSources:(id)sources
{
  v75 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  v5 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor = [v5 descriptor];
  shape = [descriptor shape];
  v8 = [shape mutableCopy];

  v9 = [sourcesCopy objectAtIndexedSubscript:1];
  descriptor2 = [v9 descriptor];
  shape2 = [descriptor2 shape];
  v12 = [shape2 mutableCopy];

  v13 = [MEMORY[0x277CBEBF8] mutableCopy];
  v14 = [v8 count];
  if (v14 <= [v12 count])
  {
    v15 = v12;
  }

  else
  {
    v15 = v8;
  }

  v16 = [v15 count];
  v17 = [v8 count];
  v18 = v16 - v17;
  if (v16 > v17)
  {
    do
    {
      [v8 insertObject:&unk_284BA5E70 atIndex:0];
      --v18;
    }

    while (v18);
  }

  v19 = [v12 count];
  v20 = v16 - v19;
  if (v16 > v19)
  {
    do
    {
      [v12 insertObject:&unk_284BA5E70 atIndex:0];
      --v20;
    }

    while (v20);
  }

  if (v16)
  {
    for (i = 0; i != v16; ++i)
    {
      [v13 setObject:&unk_284BA5E70 atIndexedSubscript:i];
    }
  }

  v22 = v16 - 1;
  v23 = [v8 objectAtIndexedSubscript:v16 - 1];
  unsignedIntegerValue = [v23 unsignedIntegerValue];

  v24 = v16 - 2;
  v25 = [v12 objectAtIndexedSubscript:v16 - 2];
  unsignedIntegerValue2 = [v25 unsignedIntegerValue];

  v26 = [v8 objectAtIndexedSubscript:v24];
  unsignedIntegerValue3 = [v26 unsignedIntegerValue];

  v27 = [v12 objectAtIndexedSubscript:v22];
  unsignedIntegerValue4 = [v27 unsignedIntegerValue];

  descriptor3 = [(MLCMatMulLayer *)self descriptor];
  v68 = sourcesCopy;
  if ([descriptor3 transposesX])
  {
    descriptor4 = [(MLCMatMulLayer *)self descriptor];
    transposesY = [descriptor4 transposesY];

    if (transposesY)
    {
      v32 = [v8 objectAtIndexedSubscript:v24];
      unsignedIntegerValue5 = [v32 unsignedIntegerValue];

      v34 = [v12 objectAtIndexedSubscript:v22];
      unsignedIntegerValue6 = [v34 unsignedIntegerValue];

      v36 = [v8 objectAtIndexedSubscript:v22];
      unsignedIntegerValue7 = [v36 unsignedIntegerValue];

      v38 = [v12 objectAtIndexedSubscript:v24];
      unsignedIntegerValue4 = [v38 unsignedIntegerValue];
LABEL_19:

      goto LABEL_20;
    }
  }

  else
  {
  }

  descriptor5 = [(MLCMatMulLayer *)self descriptor];
  transposesX = [descriptor5 transposesX];

  if (transposesX)
  {
    v41 = [v8 objectAtIndexedSubscript:v24];
    unsignedIntegerValue5 = [v41 unsignedIntegerValue];

    v38 = [v8 objectAtIndexedSubscript:v22];
    unsignedIntegerValue7 = [v38 unsignedIntegerValue];
    unsignedIntegerValue6 = unsignedIntegerValue2;
    goto LABEL_19;
  }

  descriptor6 = [(MLCMatMulLayer *)self descriptor];
  transposesY2 = [descriptor6 transposesY];

  if (transposesY2)
  {
    v44 = [v12 objectAtIndexedSubscript:v22];
    unsignedIntegerValue6 = [v44 unsignedIntegerValue];

    v38 = [v12 objectAtIndexedSubscript:v24];
    unsignedIntegerValue4 = [v38 unsignedIntegerValue];
    unsignedIntegerValue7 = unsignedIntegerValue3;
    unsignedIntegerValue5 = unsignedIntegerValue;
    goto LABEL_19;
  }

  unsignedIntegerValue5 = unsignedIntegerValue;
  unsignedIntegerValue6 = unsignedIntegerValue2;
  unsignedIntegerValue7 = unsignedIntegerValue3;
LABEL_20:
  if (unsignedIntegerValue5 == unsignedIntegerValue6)
  {
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue4];
    [v13 setObject:v45 atIndexedSubscript:v22];

    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:unsignedIntegerValue7];
    [v13 setObject:v46 atIndexedSubscript:v24];

    if (!v24)
    {
LABEL_30:
      v54 = [v13 copy];
      v55 = v68;
      v56 = [v68 objectAtIndexedSubscript:0];
      descriptor7 = [v56 descriptor];
      v58 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v54, [descriptor7 dataType]);

      v59 = [MLCTensor tensorWithDescriptor:v58];

      goto LABEL_37;
    }

    v47 = 0;
    while (1)
    {
      v48 = [v8 objectAtIndexedSubscript:v47];
      unsignedIntegerValue8 = [v48 unsignedIntegerValue];

      v50 = [v12 objectAtIndexedSubscript:v47];
      unsignedIntegerValue9 = [v50 unsignedIntegerValue];

      if (unsignedIntegerValue8 != 1 && unsignedIntegerValue8 != unsignedIntegerValue9 && unsignedIntegerValue9 != 1)
      {
        break;
      }

      if (unsignedIntegerValue8 == 1)
      {
        v52 = unsignedIntegerValue9;
      }

      else
      {
        v52 = unsignedIntegerValue8;
      }

      v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v52];
      [v13 setObject:v53 atIndexedSubscript:v47];

      if (v24 == ++v47)
      {
        goto LABEL_30;
      }
    }

    v60 = +[MLCLog framework];
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v63 = NSStringFromSelector(a2);
      *buf = 138412802;
      v70 = v63;
      v71 = 2048;
      v72 = unsignedIntegerValue8;
      v73 = 2048;
      v74 = unsignedIntegerValue9;
      _os_log_error_impl(&dword_238C1D000, v60, OS_LOG_TYPE_ERROR, "%@: the shapes of source tensors do not allow broadcast, [%lu] != [%lu]", buf, 0x20u);
    }
  }

  else
  {
    v60 = +[MLCLog framework];
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      [MLCMatMulLayer resultTensorFromSources:a2];
    }
  }

  v59 = 0;
  v55 = v68;
LABEL_37:

  v61 = *MEMORY[0x277D85DE8];

  return v59;
}

- (BOOL)isSupportedShapeForTensorSources:(id)sources
{
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = [sources objectAtIndexedSubscript:v4];
    descriptor = [v7 descriptor];
    shape = [descriptor shape];
    v10 = [shape count];

    if (v10 < 2)
    {
      break;
    }

    v5 = 0;
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  return v10 > 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  descriptor = [(MLCMatMulLayer *)self descriptor];
  resultTensors = [(MLCLayer *)self resultTensors];
  v8 = [v3 stringWithFormat:@"%@: { descriptor=%@ : resultTensor=%@ }", v5, descriptor, resultTensors];

  return v8;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  layerID = [(MLCLayer *)self layerID];
  descriptor = [(MLCMatMulLayer *)self descriptor];
  [descriptor alpha];
  v9 = v8;
  descriptor2 = [(MLCMatMulLayer *)self descriptor];
  transposesX = [descriptor2 transposesX];
  descriptor3 = [(MLCMatMulLayer *)self descriptor];
  v13 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Alpha: %.03f<BR />Transposes X: %hhd    Transposes Y: %hhd</FONT>>", v5, layerID, *&v9, transposesX, objc_msgSend(descriptor3, "transposesY")];

  return v13;
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

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.5(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)resultTensorFromSources:(const char *)a1 .cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end