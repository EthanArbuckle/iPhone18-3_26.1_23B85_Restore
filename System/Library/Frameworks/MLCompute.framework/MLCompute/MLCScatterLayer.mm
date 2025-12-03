@interface MLCScatterLayer
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (MLCScatterLayer)initWithDimension:(unint64_t)dimension reductionType:(int)type;
- (id)description;
- (id)resultTensorFromSources:(id)sources;
- (id)summarizedDOTDescription;
@end

@implementation MLCScatterLayer

- (MLCScatterLayer)initWithDimension:(unint64_t)dimension reductionType:(int)type
{
  v7.receiver = self;
  v7.super_class = MLCScatterLayer;
  result = [(MLCLayer *)&v7 initWithLabel:@"Scatter"];
  if (result)
  {
    result->_dimension = dimension;
    result->_reductionType = type;
  }

  return result;
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  if ([tensorsCopy count] == 3)
  {
    v12 = [tensorsCopy objectAtIndexedSubscript:0];
    v13 = [tensorsCopy objectAtIndexedSubscript:1];
    v14 = [tensorsCopy objectAtIndexedSubscript:2];
    descriptor = [v14 descriptor];
    dataType = [descriptor dataType];

    if (dataType == 1)
    {
      descriptor2 = [v13 descriptor];
      dataType2 = [descriptor2 dataType];

      if (dataType2 == 7)
      {
        descriptor3 = [v12 descriptor];
        dataType3 = [descriptor3 dataType];

        if (dataType3 == 1)
        {
          selfCopy = self;
          v51 = a2;
          v56 = v14;
          v57 = deviceCopy;
          v21 = [tensorsCopy objectAtIndexedSubscript:1];
          descriptor4 = [v21 descriptor];
          shape = [descriptor4 shape];
          v52 = [shape count];
          v23 = [tensorsCopy objectAtIndexedSubscript:0];
          descriptor5 = [v23 descriptor];
          shape2 = [descriptor5 shape];
          v26 = [shape2 count];

          if (v52 != v26)
          {
            v40 = +[MLCLog framework];
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              [MLCScatterLayer compileForDevice:v51 sourceTensors:? resultTensor:?];
            }

            v41 = 0;
            v14 = v56;
            deviceCopy = v57;
            goto LABEL_22;
          }

          v49 = v13;
          v53 = v12;
          v55 = tensorCopy;
          v27 = 0;
          while (1)
          {
            v28 = [tensorsCopy objectAtIndexedSubscript:2];
            descriptor6 = [v28 descriptor];
            shape3 = [descriptor6 shape];
            v31 = [shape3 count];

            if (v27 >= v31)
            {
              break;
            }

            v32 = [tensorsCopy objectAtIndexedSubscript:1];
            descriptor7 = [v32 descriptor];
            shape4 = [descriptor7 shape];
            v35 = [shape4 objectAtIndexedSubscript:v27];
            v36 = [tensorsCopy objectAtIndexedSubscript:0];
            descriptor8 = [v36 descriptor];
            shape5 = [descriptor8 shape];
            v39 = [shape5 objectAtIndexedSubscript:v27];

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
              deviceCopy = v57;
              v12 = v53;
              tensorCopy = v55;
              v13 = v49;
              goto LABEL_22;
            }
          }

          deviceCopy = v57;
          computeEngine = [v57 computeEngine];
          v44 = objc_opt_respondsToSelector();

          if (v44)
          {
            computeEngine2 = [v57 computeEngine];
            v40 = [computeEngine2 scatterLayerWithDimension:-[MLCScatterLayer dimension](selfCopy reduceType:{"dimension"), -[MLCScatterLayer reductionType](selfCopy, "reductionType")}];

            v13 = v49;
            v14 = v56;
            v46 = v51;
            if (v40)
            {
              tensorCopy = v55;
              if ([v40 count])
              {
                computeEngine3 = [v57 computeEngine];
                v41 = [computeEngine3 compileLayerDeviceOps:v40 sourceTensors:tensorsCopy resultTensor:v55];

                v58.receiver = selfCopy;
                v58.super_class = MLCScatterLayer;
                [(MLCLayer *)&v58 bindDevice:v57 deviceOps:v40];
                v12 = v53;
                goto LABEL_22;
              }
            }

            else
            {
              tensorCopy = v55;
            }
          }

          else
          {
            v40 = 0;
            tensorCopy = v55;
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

- (id)resultTensorFromSources:(id)sources
{
  sourcesCopy = sources;
  v4 = [MEMORY[0x277CBEBF8] mutableCopy];
  for (i = 0; ; ++i)
  {
    v6 = [sourcesCopy objectAtIndexedSubscript:2];
    descriptor = [v6 descriptor];
    shape = [descriptor shape];
    v9 = [shape count];

    if (i >= v9)
    {
      break;
    }

    v10 = [sourcesCopy objectAtIndexedSubscript:2];
    descriptor2 = [v10 descriptor];
    shape2 = [descriptor2 shape];
    v13 = [shape2 objectAtIndexedSubscript:i];
    [v4 setObject:v13 atIndexedSubscript:i];
  }

  v14 = [v4 copy];
  v15 = [sourcesCopy objectAtIndexedSubscript:2];
  descriptor3 = [v15 descriptor];
  v17 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v14, [descriptor3 dataType]);

  v18 = [MLCTensor tensorWithDescriptor:v17];

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  dimension = [(MLCScatterLayer *)self dimension];
  resultTensors = [(MLCLayer *)self resultTensors];
  v8 = [v3 stringWithFormat:@"%@: { dimension=%lu : resultTensor=%@ }", v5, dimension, resultTensors];

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