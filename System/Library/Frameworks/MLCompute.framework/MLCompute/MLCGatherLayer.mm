@interface MLCGatherLayer
+ (MLCGatherLayer)layerWithDimension:(NSUInteger)dimension;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (MLCGatherLayer)initWithDimension:(unint64_t)dimension;
- (id)description;
- (id)resultTensorFromSources:(id)sources;
- (id)summarizedDOTDescription;
@end

@implementation MLCGatherLayer

+ (MLCGatherLayer)layerWithDimension:(NSUInteger)dimension
{
  v3 = [[self alloc] initWithDimension:dimension];

  return v3;
}

- (MLCGatherLayer)initWithDimension:(unint64_t)dimension
{
  v5.receiver = self;
  v5.super_class = MLCGatherLayer;
  result = [(MLCLayer *)&v5 initWithLabel:@"Gather"];
  if (result)
  {
    result->_dimension = dimension;
  }

  return result;
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  if ([tensorsCopy count] != 2)
  {
    v28 = +[MLCLog framework];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [MLCGatherLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_21;
  }

  v12 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v12 descriptor];
  dataType = [descriptor dataType];

  if (dataType != 1)
  {
    v28 = +[MLCLog framework];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [MLCGatherLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_21;
  }

  v15 = [tensorsCopy objectAtIndexedSubscript:1];
  descriptor2 = [v15 descriptor];
  dataType2 = [descriptor2 dataType];

  if (dataType2 != 7)
  {
    v28 = +[MLCLog framework];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [MLCGatherLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_21;
  }

  v33 = a2;
  selfCopy = self;
  v18 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor3 = [v18 descriptor];
  shape = [descriptor3 shape];
  v35 = [shape count];
  v21 = [tensorsCopy objectAtIndexedSubscript:1];
  descriptor4 = [v21 descriptor];
  shape2 = [descriptor4 shape];
  v24 = [shape2 count];

  if (v35 != v24)
  {
    v28 = +[MLCLog framework];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [MLCGatherLayer compileForDevice:v33 sourceTensors:? resultTensor:?];
    }

    goto LABEL_21;
  }

  computeEngine = [deviceCopy computeEngine];
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

  computeEngine2 = [deviceCopy computeEngine];
  v28 = [computeEngine2 gatherLayerWithDimension:{-[MLCGatherLayer dimension](selfCopy, "dimension")}];

  if (!v28 || ![v28 count])
  {
    goto LABEL_18;
  }

  computeEngine3 = [deviceCopy computeEngine];
  v30 = [computeEngine3 compileLayerDeviceOps:v28 sourceTensors:tensorsCopy resultTensor:tensorCopy];

  v36.receiver = selfCopy;
  v36.super_class = MLCGatherLayer;
  [(MLCLayer *)&v36 bindDevice:deviceCopy deviceOps:v28];
LABEL_22:

  return v30;
}

- (id)resultTensorFromSources:(id)sources
{
  sourcesCopy = sources;
  v4 = [MEMORY[0x277CBEBF8] mutableCopy];
  for (i = 0; ; ++i)
  {
    v6 = [sourcesCopy objectAtIndexedSubscript:1];
    descriptor = [v6 descriptor];
    shape = [descriptor shape];
    v9 = [shape count];

    if (i >= v9)
    {
      break;
    }

    v10 = [sourcesCopy objectAtIndexedSubscript:1];
    descriptor2 = [v10 descriptor];
    shape2 = [descriptor2 shape];
    v13 = [shape2 objectAtIndexedSubscript:i];
    [v4 setObject:v13 atIndexedSubscript:i];
  }

  v14 = [v4 copy];
  v15 = [sourcesCopy objectAtIndexedSubscript:0];
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
  dimension = [(MLCGatherLayer *)self dimension];
  resultTensors = [(MLCLayer *)self resultTensors];
  v8 = [v3 stringWithFormat:@"%@: { dimension=%lu : resultTensor=%@ }", v5, dimension, resultTensors];

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