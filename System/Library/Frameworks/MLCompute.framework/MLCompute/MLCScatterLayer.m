@interface MLCScatterLayer
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (MLCScatterLayer)initWithDimension:(unint64_t)a3 reductionType:(int)a4;
- (id)description;
- (id)resultTensorFromSources:(id)a3;
- (id)summarizedDOTDescription;
@end

@implementation MLCScatterLayer

- (MLCScatterLayer)initWithDimension:(unint64_t)a3 reductionType:(int)a4
{
  v7.receiver = self;
  v7.super_class = MLCScatterLayer;
  result = [(MLCLayer *)&v7 initWithLabel:@"Scatter"];
  if (result)
  {
    result->_dimension = a3;
    result->_reductionType = a4;
  }

  return result;
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v10 count] == 3)
  {
    v12 = [v10 objectAtIndexedSubscript:0];
    v13 = [v10 objectAtIndexedSubscript:1];
    v14 = [v10 objectAtIndexedSubscript:2];
    v15 = [v14 descriptor];
    v16 = [v15 dataType];

    if (v16 == 1)
    {
      v17 = [v13 descriptor];
      v18 = [v17 dataType];

      if (v18 == 7)
      {
        v19 = [v12 descriptor];
        v20 = [v19 dataType];

        if (v20 == 1)
        {
          v50 = self;
          v51 = a2;
          v56 = v14;
          v57 = v9;
          v21 = [v10 objectAtIndexedSubscript:1];
          v54 = [v21 descriptor];
          v22 = [v54 shape];
          v52 = [v22 count];
          v23 = [v10 objectAtIndexedSubscript:0];
          v24 = [v23 descriptor];
          v25 = [v24 shape];
          v26 = [v25 count];

          if (v52 != v26)
          {
            v40 = +[MLCLog framework];
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              [MLCScatterLayer compileForDevice:v51 sourceTensors:? resultTensor:?];
            }

            v41 = 0;
            v14 = v56;
            v9 = v57;
            goto LABEL_22;
          }

          v49 = v13;
          v53 = v12;
          v55 = v11;
          v27 = 0;
          while (1)
          {
            v28 = [v10 objectAtIndexedSubscript:2];
            v29 = [v28 descriptor];
            v30 = [v29 shape];
            v31 = [v30 count];

            if (v27 >= v31)
            {
              break;
            }

            v32 = [v10 objectAtIndexedSubscript:1];
            v33 = [v32 descriptor];
            v34 = [v33 shape];
            v35 = [v34 objectAtIndexedSubscript:v27];
            v36 = [v10 objectAtIndexedSubscript:0];
            v37 = [v36 descriptor];
            v38 = [v37 shape];
            v39 = [v38 objectAtIndexedSubscript:v27];

            ++v27;
            if (v35 != v39)
            {
              v40 = +[MLCLog framework];
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                [MLCScatterLayer compileForDevice:v51 sourceTensors:? resultTensor:?];
              }

              v41 = 0;
              v14 = v56;
              v9 = v57;
              v12 = v53;
              v11 = v55;
              v13 = v49;
              goto LABEL_22;
            }
          }

          v9 = v57;
          v43 = [v57 computeEngine];
          v44 = objc_opt_respondsToSelector();

          if (v44)
          {
            v45 = [v57 computeEngine];
            v40 = [v45 scatterLayerWithDimension:-[MLCScatterLayer dimension](v50 reduceType:{"dimension"), -[MLCScatterLayer reductionType](v50, "reductionType")}];

            v13 = v49;
            v14 = v56;
            v46 = v51;
            if (v40)
            {
              v11 = v55;
              if ([v40 count])
              {
                v47 = [v57 computeEngine];
                v41 = [v47 compileLayerDeviceOps:v40 sourceTensors:v10 resultTensor:v55];

                v58.receiver = v50;
                v58.super_class = MLCScatterLayer;
                [(MLCLayer *)&v58 bindDevice:v57 deviceOps:v40];
                v12 = v53;
                goto LABEL_22;
              }
            }

            else
            {
              v11 = v55;
            }
          }

          else
          {
            v40 = 0;
            v11 = v55;
            v14 = v56;
            v13 = v49;
            v46 = v51;
          }

          v48 = +[MLCLog framework];
          v12 = v53;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            [MLCScatterLayer compileForDevice:v46 sourceTensors:? resultTensor:?];
          }
        }

        else
        {
          v40 = +[MLCLog framework];
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            [MLCScatterLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
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
      }
    }

    else
    {
      v40 = +[MLCLog framework];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [MLCScatterLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
      }
    }

    v41 = 0;
LABEL_22:

    goto LABEL_23;
  }

  v12 = +[MLCLog framework];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [MLCScatterLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
  }

  v41 = 0;
LABEL_23:

  return v41;
}

- (id)resultTensorFromSources:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEBF8] mutableCopy];
  for (i = 0; ; ++i)
  {
    v6 = [v3 objectAtIndexedSubscript:2];
    v7 = [v6 descriptor];
    v8 = [v7 shape];
    v9 = [v8 count];

    if (i >= v9)
    {
      break;
    }

    v10 = [v3 objectAtIndexedSubscript:2];
    v11 = [v10 descriptor];
    v12 = [v11 shape];
    v13 = [v12 objectAtIndexedSubscript:i];
    [v4 setObject:v13 atIndexedSubscript:i];
  }

  v14 = [v4 copy];
  v15 = [v3 objectAtIndexedSubscript:2];
  v16 = [v15 descriptor];
  v17 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v14, [v16 dataType]);

  v18 = [MLCTensor tensorWithDescriptor:v17];

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCScatterLayer *)self dimension];
  v7 = [(MLCLayer *)self resultTensors];
  v8 = [v3 stringWithFormat:@"%@: { dimension=%lu : resultTensor=%@ }", v5, v6, v7];

  return v8;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Dimension: %lu</FONT>>", v5, -[MLCLayer layerID](self, "layerID"), -[MLCScatterLayer dimension](self, "dimension")];

  return v6;
}

+ (void)layerWithDimension:(const char *)a1 reductionType:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
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

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.6(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.7(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end