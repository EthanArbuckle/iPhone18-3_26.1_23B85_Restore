@interface MLCMatMulLayer
+ (MLCMatMulLayer)layerWithDescriptor:(MLCMatMulDescriptor *)descriptor;
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (BOOL)isSupportedShapeForTensorSources:(id)a3;
- (MLCMatMulLayer)initWithDescriptor:(id)a3;
- (id)description;
- (id)resultTensorFromSources:(id)a3;
- (id)summarizedDOTDescription;
@end

@implementation MLCMatMulLayer

+ (MLCMatMulLayer)layerWithDescriptor:(MLCMatMulDescriptor *)descriptor
{
  v4 = descriptor;
  v5 = [[a1 alloc] initWithDescriptor:v4];

  return v5;
}

- (MLCMatMulLayer)initWithDescriptor:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MLCMatMulLayer;
  v6 = [(MLCLayer *)&v9 initWithLabel:@"MatMul"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_descriptor, a3);
  }

  return v7;
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v65 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (!v10)
  {
    v19 = +[MLCLog framework];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MLCConcatenationLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_31;
  }

  if (!v11)
  {
    v19 = +[MLCLog framework];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MLCMatMulLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_31;
  }

  v55 = self;
  v13 = [v10 count];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    while (1)
    {
      v16 = [v10 objectAtIndexedSubscript:v15];
      v17 = [v16 descriptor];
      v18 = [v17 dataType];

      if (![(MLCLayer *)MLCMatMulLayer supportsDataType:v18 onDevice:v9])
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
      v62 = v18;
      v63 = 2112;
      v64 = v9;
      _os_log_error_impl(&dword_238C1D000, v19, OS_LOG_TYPE_ERROR, "%@: sourceTensor[%lu] uses unsupported data type = %d on a device = %@", buf, 0x26u);
    }

    goto LABEL_31;
  }

LABEL_7:
  if ([v10 count] > 1)
  {
    v54 = a2;
    v20 = v55;
    v21 = [(MLCMatMulLayer *)v55 resultTensorFromSources:v10];
    v19 = v21;
    if (!v21)
    {
      goto LABEL_33;
    }

    v22 = [v21 descriptor];
    v23 = [v22 shape];
    v24 = [v12 descriptor];
    v25 = [v24 shape];
    v26 = [v23 isEqualToArray:v25];

    if (v26)
    {
      if ([v10 count] == 3)
      {
        v27 = [v10 objectAtIndexedSubscript:2];
        v28 = [v27 descriptor];
        v29 = [v28 shape];
        v30 = [v29 mutableCopy];

        v31 = [v30 count];
        v32 = [v12 descriptor];
        v33 = [v32 dimensionCount];

        if (v31 < v33)
        {
          do
          {
            [v30 insertObject:&unk_284BA5E70 atIndex:0];
            ++v31;
            v34 = [v12 descriptor];
            v35 = [v34 dimensionCount];
          }

          while (v31 < v35);
        }

        v36 = [v12 descriptor];
        v37 = [v36 shape];

        if ([v37 count])
        {
          v38 = 0;
          while (1)
          {
            v39 = [v30 objectAtIndexedSubscript:v38];
            v40 = [v39 unsignedIntegerValue];

            v41 = [v37 objectAtIndexedSubscript:v38];
            v42 = [v41 unsignedIntegerValue];

            if (v42 != 1 && v40 != 1 && v40 != v42)
            {
              break;
            }

            if (++v38 >= [v37 count])
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

        v20 = v55;
      }

      v43 = [v9 computeEngine];
      v44 = [(MLCMatMulLayer *)v20 descriptor];
      v45 = v20;
      v46 = v44;
      v30 = [v43 matMulLayerWithDescriptor:v44 sourceTensors:v10 resultTensor:v12 inferenceOnly:{-[MLCLayer compileForInferenceOnly](v45, "compileForInferenceOnly")}];

      if (v30 && [v30 count])
      {
        v47 = [v9 computeEngine];
        v48 = [v47 compileLayerDeviceOps:v30 sourceTensors:v10 resultTensor:v12];

        v56.receiver = v55;
        v56.super_class = MLCMatMulLayer;
        [(MLCLayer *)&v56 bindDevice:v9 deviceOps:v30];
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

- (id)resultTensorFromSources:(id)a3
{
  v75 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v5 descriptor];
  v7 = [v6 shape];
  v8 = [v7 mutableCopy];

  v9 = [v4 objectAtIndexedSubscript:1];
  v10 = [v9 descriptor];
  v11 = [v10 shape];
  v12 = [v11 mutableCopy];

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
  v66 = [v23 unsignedIntegerValue];

  v24 = v16 - 2;
  v25 = [v12 objectAtIndexedSubscript:v16 - 2];
  v67 = [v25 unsignedIntegerValue];

  v26 = [v8 objectAtIndexedSubscript:v24];
  v65 = [v26 unsignedIntegerValue];

  v27 = [v12 objectAtIndexedSubscript:v22];
  v28 = [v27 unsignedIntegerValue];

  v29 = [(MLCMatMulLayer *)self descriptor];
  v68 = v4;
  if ([v29 transposesX])
  {
    v30 = [(MLCMatMulLayer *)self descriptor];
    v31 = [v30 transposesY];

    if (v31)
    {
      v32 = [v8 objectAtIndexedSubscript:v24];
      v33 = [v32 unsignedIntegerValue];

      v34 = [v12 objectAtIndexedSubscript:v22];
      v35 = [v34 unsignedIntegerValue];

      v36 = [v8 objectAtIndexedSubscript:v22];
      v37 = [v36 unsignedIntegerValue];

      v38 = [v12 objectAtIndexedSubscript:v24];
      v28 = [v38 unsignedIntegerValue];
LABEL_19:

      goto LABEL_20;
    }
  }

  else
  {
  }

  v39 = [(MLCMatMulLayer *)self descriptor];
  v40 = [v39 transposesX];

  if (v40)
  {
    v41 = [v8 objectAtIndexedSubscript:v24];
    v33 = [v41 unsignedIntegerValue];

    v38 = [v8 objectAtIndexedSubscript:v22];
    v37 = [v38 unsignedIntegerValue];
    v35 = v67;
    goto LABEL_19;
  }

  v42 = [(MLCMatMulLayer *)self descriptor];
  v43 = [v42 transposesY];

  if (v43)
  {
    v44 = [v12 objectAtIndexedSubscript:v22];
    v35 = [v44 unsignedIntegerValue];

    v38 = [v12 objectAtIndexedSubscript:v24];
    v28 = [v38 unsignedIntegerValue];
    v37 = v65;
    v33 = v66;
    goto LABEL_19;
  }

  v33 = v66;
  v35 = v67;
  v37 = v65;
LABEL_20:
  if (v33 == v35)
  {
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v28];
    [v13 setObject:v45 atIndexedSubscript:v22];

    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v37];
    [v13 setObject:v46 atIndexedSubscript:v24];

    if (!v24)
    {
LABEL_30:
      v54 = [v13 copy];
      v55 = v68;
      v56 = [v68 objectAtIndexedSubscript:0];
      v57 = [v56 descriptor];
      v58 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v54, [v57 dataType]);

      v59 = [MLCTensor tensorWithDescriptor:v58];

      goto LABEL_37;
    }

    v47 = 0;
    while (1)
    {
      v48 = [v8 objectAtIndexedSubscript:v47];
      v49 = [v48 unsignedIntegerValue];

      v50 = [v12 objectAtIndexedSubscript:v47];
      v51 = [v50 unsignedIntegerValue];

      if (v49 != 1 && v49 != v51 && v51 != 1)
      {
        break;
      }

      if (v49 == 1)
      {
        v52 = v51;
      }

      else
      {
        v52 = v49;
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
      v72 = v49;
      v73 = 2048;
      v74 = v51;
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

- (BOOL)isSupportedShapeForTensorSources:(id)a3
{
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = [a3 objectAtIndexedSubscript:v4];
    v8 = [v7 descriptor];
    v9 = [v8 shape];
    v10 = [v9 count];

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
  v6 = [(MLCMatMulLayer *)self descriptor];
  v7 = [(MLCLayer *)self resultTensors];
  v8 = [v3 stringWithFormat:@"%@: { descriptor=%@ : resultTensor=%@ }", v5, v6, v7];

  return v8;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCLayer *)self layerID];
  v7 = [(MLCMatMulLayer *)self descriptor];
  [v7 alpha];
  v9 = v8;
  v10 = [(MLCMatMulLayer *)self descriptor];
  v11 = [v10 transposesX];
  v12 = [(MLCMatMulLayer *)self descriptor];
  v13 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Alpha: %.03f<BR />Transposes X: %hhd    Transposes Y: %hhd</FONT>>", v5, v6, *&v9, v11, objc_msgSend(v12, "transposesY")];

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