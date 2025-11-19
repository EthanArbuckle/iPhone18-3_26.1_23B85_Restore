@interface MLCGatherLayer
+ (MLCGatherLayer)layerWithDimension:(NSUInteger)dimension;
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (MLCGatherLayer)initWithDimension:(unint64_t)a3;
- (id)description;
- (id)resultTensorFromSources:(id)a3;
- (id)summarizedDOTDescription;
@end

@implementation MLCGatherLayer

+ (MLCGatherLayer)layerWithDimension:(NSUInteger)dimension
{
  v3 = [[a1 alloc] initWithDimension:dimension];

  return v3;
}

- (MLCGatherLayer)initWithDimension:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = MLCGatherLayer;
  result = [(MLCLayer *)&v5 initWithLabel:@"Gather"];
  if (result)
  {
    result->_dimension = a3;
  }

  return result;
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v10 count] != 2)
  {
    v28 = +[MLCLog framework];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [MLCGatherLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_21;
  }

  v12 = [v10 objectAtIndexedSubscript:0];
  v13 = [v12 descriptor];
  v14 = [v13 dataType];

  if (v14 != 1)
  {
    v28 = +[MLCLog framework];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [MLCGatherLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_21;
  }

  v15 = [v10 objectAtIndexedSubscript:1];
  v16 = [v15 descriptor];
  v17 = [v16 dataType];

  if (v17 != 7)
  {
    v28 = +[MLCLog framework];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [MLCGatherLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_21;
  }

  v33 = a2;
  v34 = self;
  v18 = [v10 objectAtIndexedSubscript:0];
  v19 = [v18 descriptor];
  v20 = [v19 shape];
  v35 = [v20 count];
  v21 = [v10 objectAtIndexedSubscript:1];
  v22 = [v21 descriptor];
  v23 = [v22 shape];
  v24 = [v23 count];

  if (v35 != v24)
  {
    v28 = +[MLCLog framework];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [MLCGatherLayer compileForDevice:v33 sourceTensors:? resultTensor:?];
    }

    goto LABEL_21;
  }

  v25 = [v9 computeEngine];
  v26 = objc_opt_respondsToSelector();

  if ((v26 & 1) == 0)
  {
    v28 = 0;
LABEL_18:
    v31 = +[MLCLog framework];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [MLCScatterLayer compileForDevice:v33 sourceTensors:? resultTensor:?];
    }

LABEL_21:
    v30 = 0;
    goto LABEL_22;
  }

  v27 = [v9 computeEngine];
  v28 = [v27 gatherLayerWithDimension:{-[MLCGatherLayer dimension](v34, "dimension")}];

  if (!v28 || ![v28 count])
  {
    goto LABEL_18;
  }

  v29 = [v9 computeEngine];
  v30 = [v29 compileLayerDeviceOps:v28 sourceTensors:v10 resultTensor:v11];

  v36.receiver = v34;
  v36.super_class = MLCGatherLayer;
  [(MLCLayer *)&v36 bindDevice:v9 deviceOps:v28];
LABEL_22:

  return v30;
}

- (id)resultTensorFromSources:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEBF8] mutableCopy];
  for (i = 0; ; ++i)
  {
    v6 = [v3 objectAtIndexedSubscript:1];
    v7 = [v6 descriptor];
    v8 = [v7 shape];
    v9 = [v8 count];

    if (i >= v9)
    {
      break;
    }

    v10 = [v3 objectAtIndexedSubscript:1];
    v11 = [v10 descriptor];
    v12 = [v11 shape];
    v13 = [v12 objectAtIndexedSubscript:i];
    [v4 setObject:v13 atIndexedSubscript:i];
  }

  v14 = [v4 copy];
  v15 = [v3 objectAtIndexedSubscript:0];
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
  v6 = [(MLCGatherLayer *)self dimension];
  v7 = [(MLCLayer *)self resultTensors];
  v8 = [v3 stringWithFormat:@"%@: { dimension=%lu : resultTensor=%@ }", v5, v6, v7];

  return v8;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Dimension: %lu</FONT>>", v5, -[MLCLayer layerID](self, "layerID"), -[MLCGatherLayer dimension](self, "dimension")];

  return v6;
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

@end