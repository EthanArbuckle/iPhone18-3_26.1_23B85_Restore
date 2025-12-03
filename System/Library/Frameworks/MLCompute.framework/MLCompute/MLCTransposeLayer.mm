@interface MLCTransposeLayer
+ (BOOL)supportsDataType:(int)type onDevice:(id)device;
+ (MLCTransposeLayer)layerWithDimensions:(NSArray *)dimensions;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (BOOL)isStaticBatchSize;
- (BOOL)isSupportedShapeForTensorSources:(id)sources;
- (MLCTransposeLayer)initWithDimensions:(id)dimensions;
- (id)description;
- (id)resultTensorFromSources:(id)sources;
- (id)summarizedDOTDescription;
- (unint64_t)resultSizeFromSourceSize:(unint64_t)size dimension:(unint64_t)dimension;
- (unint64_t)resultSizeFromSourceSizes:(id)sizes dimension:(unint64_t)dimension;
@end

@implementation MLCTransposeLayer

+ (MLCTransposeLayer)layerWithDimensions:(NSArray *)dimensions
{
  v4 = dimensions;
  v5 = [[self alloc] initWithDimensions:v4];

  return v5;
}

- (MLCTransposeLayer)initWithDimensions:(id)dimensions
{
  dimensionsCopy = dimensions;
  if ([dimensionsCopy count] < 2)
  {
    v6 = +[MLCLog framework];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MLCTransposeLayer initWithDimensions:a2];
    }

LABEL_15:
    selfCopy = 0;
    goto LABEL_16;
  }

  if ([dimensionsCopy count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [dimensionsCopy objectAtIndexedSubscript:v7];
      unsignedIntegerValue = [v8 unsignedIntegerValue];
      v10 = [dimensionsCopy count] - 1;

      if (unsignedIntegerValue > v10)
      {
        break;
      }

      if (++v7 >= [dimensionsCopy count])
      {
        goto LABEL_9;
      }
    }

    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCTransposeLayer initWithDimensions:a2];
    }

    goto LABEL_15;
  }

LABEL_9:
  v17.receiver = self;
  v17.super_class = MLCTransposeLayer;
  v11 = [(MLCLayer *)&v17 initWithLabel:@"Transpose"];
  if (v11)
  {
    v12 = [dimensionsCopy copy];
    dimensions = v11->_dimensions;
    v11->_dimensions = v12;
  }

  self = v11;
  selfCopy = self;
LABEL_16:

  return selfCopy;
}

+ (BOOL)supportsDataType:(int)type onDevice:(id)device
{
  if ([device type])
  {
    return type == 1;
  }

  else
  {
    return ((type - 1) & 0xFFFFFFFD) == 0;
  }
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v38 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  if ([tensorsCopy count] != 1)
  {
    v22 = +[MLCLog framework];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [MLCTransposeLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_17;
  }

  v12 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v12 descriptor];
  tensorAllocationSizeInBytes = [descriptor tensorAllocationSizeInBytes];
  descriptor2 = [tensorCopy descriptor];
  tensorAllocationSizeInBytes2 = [descriptor2 tensorAllocationSizeInBytes];

  if (tensorAllocationSizeInBytes != tensorAllocationSizeInBytes2)
  {
    v22 = +[MLCLog framework];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(a2);
      v26 = [tensorsCopy objectAtIndexedSubscript:0];
      descriptor3 = [v26 descriptor];
      tensorAllocationSizeInBytes3 = [descriptor3 tensorAllocationSizeInBytes];
      descriptor4 = [tensorCopy descriptor];
      *buf = 138412802;
      v35 = v25;
      v36 = 2048;
      *v37 = tensorAllocationSizeInBytes3;
      *&v37[8] = 2048;
      *&v37[10] = [descriptor4 tensorAllocationSizeInBytes];
      _os_log_error_impl(&dword_238C1D000, v22, OS_LOG_TYPE_ERROR, "%@: invalid result tensor size. sourceSize=%lu : resultSize=%lu", buf, 0x20u);

LABEL_13:
    }

LABEL_17:
    v24 = 0;
    goto LABEL_18;
  }

  v17 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor5 = [v17 descriptor];
  dataType = [descriptor5 dataType];

  if (![MLCTransposeLayer supportsDataType:dataType onDevice:deviceCopy])
  {
    v22 = +[MLCLog framework];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(a2);
      *buf = 138412802;
      v35 = v25;
      v36 = 1024;
      *v37 = dataType;
      *&v37[4] = 2112;
      *&v37[6] = deviceCopy;
      _os_log_error_impl(&dword_238C1D000, v22, OS_LOG_TYPE_ERROR, "%@: transpose layer with data type = %d is not supported on a device = %@", buf, 0x1Cu);
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  computeEngine = [deviceCopy computeEngine];
  dimensions = [(MLCTransposeLayer *)self dimensions];
  v22 = [computeEngine transposeLayerWithShape:dimensions];

  if (!v22 || ![v22 count])
  {
    v30 = +[MLCLog framework];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [MLCScatterLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_17;
  }

  computeEngine2 = [deviceCopy computeEngine];
  v24 = [computeEngine2 compileLayerDeviceOps:v22 sourceTensors:tensorsCopy resultTensor:tensorCopy];

  v33.receiver = self;
  v33.super_class = MLCTransposeLayer;
  [(MLCLayer *)&v33 bindDevice:deviceCopy deviceOps:v22];
LABEL_18:

  v31 = *MEMORY[0x277D85DE8];
  return v24;
}

- (unint64_t)resultSizeFromSourceSize:(unint64_t)size dimension:(unint64_t)dimension
{
  v5 = [MLCLog framework:size];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCTransposeLayer resultSizeFromSourceSize:a2 dimension:?];
  }

  return 0;
}

- (unint64_t)resultSizeFromSourceSizes:(id)sizes dimension:(unint64_t)dimension
{
  sizesCopy = sizes;
  dimensions = [(MLCTransposeLayer *)self dimensions];
  v8 = [dimensions objectAtIndexedSubscript:dimension];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

  v10 = [sizesCopy objectAtIndexedSubscript:unsignedIntegerValue];

  unsignedIntegerValue2 = [v10 unsignedIntegerValue];
  return unsignedIntegerValue2;
}

- (id)resultTensorFromSources:(id)sources
{
  sourcesCopy = sources;
  v6 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor = [v6 descriptor];
  shape = [descriptor shape];
  v9 = [shape count];
  dimensions = [(MLCTransposeLayer *)self dimensions];
  v11 = [dimensions count];

  if (v9 == v11)
  {
    v12 = [MEMORY[0x277CBEBF8] mutableCopy];
    for (i = 0; ; ++i)
    {
      v14 = [sourcesCopy objectAtIndexedSubscript:0];
      descriptor2 = [v14 descriptor];
      shape2 = [descriptor2 shape];
      v17 = [shape2 count];

      if (i >= v17)
      {
        break;
      }

      v18 = [sourcesCopy objectAtIndexedSubscript:0];
      descriptor3 = [v18 descriptor];
      shape3 = [descriptor3 shape];
      v21 = [(MLCTransposeLayer *)self resultSizeFromSourceSizes:shape3 dimension:i];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
      [v12 setObject:v22 atIndexedSubscript:i];
    }

    v23 = [v12 copy];
    v24 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor4 = [v24 descriptor];
    v26 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v23, [descriptor4 dataType]);

    v27 = [MLCTensor tensorWithDescriptor:v26];
  }

  else
  {
    v28 = +[MLCLog framework];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [MLCTransposeLayer resultTensorFromSources:a2];
    }

    v27 = 0;
  }

  return v27;
}

- (BOOL)isSupportedShapeForTensorSources:(id)sources
{
  sourcesCopy = sources;
  if ([sourcesCopy count])
  {
    v4 = 0;
    do
    {
      v5 = [sourcesCopy objectAtIndexedSubscript:v4];
      descriptor = [v5 descriptor];
      shape = [descriptor shape];
      v8 = [shape count];

      v9 = v8 > 1;
      if (v8 <= 1)
      {
        break;
      }

      ++v4;
    }

    while (v4 < [sourcesCopy count]);
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)isStaticBatchSize
{
  sourceTensors = [(MLCLayer *)self sourceTensors];
  v3 = [sourceTensors objectAtIndexedSubscript:0];
  descriptor = [v3 descriptor];
  shape = [descriptor shape];
  v6 = [shape objectAtIndexedSubscript:0];
  unsignedIntegerValue = [v6 unsignedIntegerValue];
  resultTensors = [(MLCLayer *)self resultTensors];
  v9 = [resultTensors objectAtIndexedSubscript:0];
  descriptor2 = [v9 descriptor];
  shape2 = [descriptor2 shape];
  v12 = [shape2 objectAtIndexedSubscript:0];
  LOBYTE(unsignedIntegerValue) = unsignedIntegerValue == [v12 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  dimensions = [(MLCTransposeLayer *)self dimensions];
  conditionalTreeNode = [(MLCLayer *)self conditionalTreeNode];
  resultTensors = [(MLCLayer *)self resultTensors];
  v9 = [v3 stringWithFormat:@"%@: { dimensions=%@ : conditionalTreeNode=%@ : resultTensor=%@ }", v5, dimensions, conditionalTreeNode, resultTensors];

  return v9;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  layerID = [(MLCLayer *)self layerID];
  dimensions = [(MLCTransposeLayer *)self dimensions];
  v8 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Permutation: %@</FONT>>", v5, layerID, dimensions];

  return v8;
}

- (void)initWithDimensions:(const char *)a1 .cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithDimensions:(const char *)a1 .cold.2(const char *a1)
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

- (void)resultSizeFromSourceSize:(const char *)a1 dimension:.cold.1(const char *a1)
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