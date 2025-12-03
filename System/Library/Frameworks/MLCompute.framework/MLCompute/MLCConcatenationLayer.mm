@interface MLCConcatenationLayer
+ (MLCConcatenationLayer)layer;
+ (MLCConcatenationLayer)layerWithDimension:(NSUInteger)dimension;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (MLCConcatenationLayer)initWithDimension:(unint64_t)dimension;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)resultTensorFromSources:(id)sources;
- (id)summarizedDOTDescription;
@end

@implementation MLCConcatenationLayer

+ (MLCConcatenationLayer)layer
{
  v2 = [[self alloc] initWithDimension:1];

  return v2;
}

+ (MLCConcatenationLayer)layerWithDimension:(NSUInteger)dimension
{
  v3 = [[self alloc] initWithDimension:dimension];

  return v3;
}

- (MLCConcatenationLayer)initWithDimension:(unint64_t)dimension
{
  v5.receiver = self;
  v5.super_class = MLCConcatenationLayer;
  result = [(MLCLayer *)&v5 initWithLabel:@"Concat"];
  if (result)
  {
    result->_dimension = dimension;
  }

  return result;
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v55 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  if (!tensorsCopy)
  {
    v34 = +[MLCLog framework];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [MLCConcatenationLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_35;
  }

  if (![tensorsCopy count])
  {
    v34 = +[MLCLog framework];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [MLCConcatenationLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_35;
  }

  aSelector = a2;
  v12 = [tensorsCopy count];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    while (1)
    {
      v15 = [tensorsCopy objectAtIndexedSubscript:v14];
      descriptor = [v15 descriptor];
      dataType = [descriptor dataType];

      if (![MLCConcatenationLayer supportsDataType:dataType onDevice:deviceCopy])
      {
        break;
      }

      if (v13 == ++v14)
      {
        goto LABEL_7;
      }
    }

    v34 = +[MLCLog framework];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v37 = NSStringFromSelector(a2);
      *buf = 138413058;
      v48 = v37;
      v49 = 2048;
      v50 = v14;
      v51 = 1024;
      v52 = dataType;
      v53 = 2112;
      v54 = deviceCopy;
      _os_log_error_impl(&dword_238C1D000, v34, OS_LOG_TYPE_ERROR, "%@: sourceTensor[%lu] uses unsupported data type = %d on a device = %@", buf, 0x26u);
    }

    goto LABEL_35;
  }

LABEL_7:
  v18 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor2 = [v18 descriptor];
  shape = [descriptor2 shape];
  v21 = [shape count];

  if ([tensorsCopy count] >= 2)
  {
    v22 = 1;
    while (1)
    {
      v23 = [tensorsCopy objectAtIndexedSubscript:v22];
      descriptor3 = [v23 descriptor];
      shape2 = [descriptor3 shape];
      v26 = [shape2 count];

      if (v21 != v26)
      {
        break;
      }

      if (++v22 >= [tensorsCopy count])
      {
        goto LABEL_11;
      }
    }

    v34 = +[MLCLog framework];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [MLCConcatenationLayer compileForDevice:? sourceTensors:? resultTensor:?];
    }

    goto LABEL_35;
  }

LABEL_11:
  computeEngine = [deviceCopy computeEngine];
  v28 = objc_opt_respondsToSelector();

  computeEngine2 = [deviceCopy computeEngine];
  if ((v28 & 1) == 0)
  {
    v38 = objc_opt_respondsToSelector();

    if ((v38 & 1) == 0)
    {
      v34 = 0;
      v36 = 1;
      goto LABEL_31;
    }

    computeEngine3 = [deviceCopy computeEngine];
    v34 = [computeEngine3 splitLayerWithDimension:{-[MLCConcatenationLayer dimension](self, "dimension")}];

    if (v34 && [v34 count])
    {
      computeEngine4 = [deviceCopy computeEngine];
      v46 = tensorCopy;
      v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
      v36 = [computeEngine4 compileLayerDeviceOps:v34 sourceTensors:tensorsCopy resultTensors:v40];

      goto LABEL_25;
    }

    v41 = +[MLCLog framework];
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  dimension = [(MLCConcatenationLayer *)self dimension];
  v31 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor4 = [v31 descriptor];
  shape3 = [descriptor4 shape];
  v34 = [computeEngine2 concatLayerWithConcatDimension:dimension sourceShapeCount:{objc_msgSend(shape3, "count")}];

  if (!v34 || ![v34 count])
  {
    v41 = +[MLCLog framework];
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
LABEL_34:

LABEL_35:
      v36 = 0;
      goto LABEL_36;
    }

LABEL_33:
    [MLCScatterLayer compileForDevice:? sourceTensors:? resultTensor:?];
    goto LABEL_34;
  }

  computeEngine4 = [deviceCopy computeEngine];
  v36 = [computeEngine4 compileLayerDeviceOps:v34 sourceTensors:tensorsCopy resultTensor:tensorCopy];
LABEL_25:

LABEL_31:
  v45.receiver = self;
  v45.super_class = MLCConcatenationLayer;
  [(MLCLayer *)&v45 bindDevice:deviceCopy deviceOps:v34];
LABEL_36:

  v42 = *MEMORY[0x277D85DE8];
  return v36;
}

- (id)resultTensorFromSources:(id)sources
{
  v37 = *MEMORY[0x277D85DE8];
  sourcesCopy = sources;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  v6 = 0;
  v35 = 0u;
  v36 = 0u;
  while (1)
  {
    v7 = [sourcesCopy objectAtIndexedSubscript:{0, v35, v36}];
    descriptor = [v7 descriptor];
    shape = [descriptor shape];
    v10 = [shape count];

    if (v6 >= v10)
    {
      break;
    }

    v11 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor2 = [v11 descriptor];
    shape2 = [descriptor2 shape];
    v14 = [shape2 objectAtIndexedSubscript:v6];
    *(&v35 + v6) = [v14 unsignedIntegerValue];

    ++v6;
  }

  if ([sourcesCopy count] >= 2)
  {
    v15 = 1;
    do
    {
      v16 = [sourcesCopy objectAtIndexedSubscript:v15];
      descriptor3 = [v16 descriptor];
      shape3 = [descriptor3 shape];
      v19 = [shape3 objectAtIndexedSubscript:{-[MLCConcatenationLayer dimension](self, "dimension")}];
      unsignedIntegerValue = [v19 unsignedIntegerValue];
      dimension = [(MLCConcatenationLayer *)self dimension];
      *(&v35 + dimension) += unsignedIntegerValue;

      ++v15;
    }

    while (v15 < [sourcesCopy count]);
  }

  for (i = 0; ; ++i)
  {
    v23 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor4 = [v23 descriptor];
    shape4 = [descriptor4 shape];
    v26 = [shape4 count];

    if (i >= v26)
    {
      break;
    }

    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(&v35 + i)];
    [v5 setObject:v27 atIndexedSubscript:i];
  }

  v28 = [v5 copy];
  v29 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor5 = [v29 descriptor];
  v31 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v28, [descriptor5 dataType]);

  v32 = [MLCTensor tensorWithDescriptor:v31];

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  dimension = [(MLCConcatenationLayer *)self dimension];
  conditionalTreeNode = [(MLCLayer *)self conditionalTreeNode];
  resultTensors = [(MLCLayer *)self resultTensors];
  v9 = [v3 stringWithFormat:@"%@: { dimension=%lu : conditionalTreeNode=%@ : resultTensor=%@ }", v5, dimension, conditionalTreeNode, resultTensors];

  return v9;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Dimension: %lu</FONT>>", v5, -[MLCLayer layerID](self, "layerID"), -[MLCConcatenationLayer dimension](self, "dimension")];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  dimension = [(MLCConcatenationLayer *)self dimension];

  return [v4 initWithDimension:dimension];
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

@end