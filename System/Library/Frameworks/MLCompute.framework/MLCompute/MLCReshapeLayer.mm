@interface MLCReshapeLayer
+ (MLCReshapeLayer)layerWithShape:(NSArray *)shape;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (BOOL)isStaticBatchSize;
- (MLCReshapeLayer)initWithShape:(id)shape;
- (id)description;
- (id)resultTensorFromSources:(id)sources;
- (id)summarizedDOTDescription;
- (unint64_t)resultSizeFromSourceSize:(unint64_t)size dimension:(unint64_t)dimension;
@end

@implementation MLCReshapeLayer

+ (MLCReshapeLayer)layerWithShape:(NSArray *)shape
{
  v4 = shape;
  v5 = [[self alloc] initWithShape:v4];

  return v5;
}

- (MLCReshapeLayer)initWithShape:(id)shape
{
  shapeCopy = shape;
  if ([shapeCopy count])
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [shapeCopy objectAtIndexedSubscript:v8];
      intValue = [v9 intValue];

      if (intValue == -1)
      {
        ++v7;
      }

      ++v8;
    }

    while (v8 < [shapeCopy count]);
    if (v7 > 1)
    {
      v11 = +[MLCLog framework];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [MLCReshapeLayer initWithShape:a2];
      }

LABEL_12:

      selfCopy = 0;
      goto LABEL_16;
    }
  }

  v12 = [shapeCopy count];
  if (v12 > +[MLCTensorDescriptor maxTensorDimensions])
  {
    v11 = +[MLCLog framework];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MLCReshapeLayer initWithShape:a2];
    }

    goto LABEL_12;
  }

  v17.receiver = self;
  v17.super_class = MLCReshapeLayer;
  v14 = [(MLCLayer *)&v17 initWithLabel:@"Reshape"];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_shape, shape);
  }

  self = v15;
  selfCopy = self;
LABEL_16:

  return selfCopy;
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v37 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  if ([tensorsCopy count] != 1)
  {
    v19 = +[MLCLog framework];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MLCReshapeLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_13;
  }

  v12 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v12 descriptor];
  tensorAllocationSizeInBytes = [descriptor tensorAllocationSizeInBytes];
  descriptor2 = [tensorCopy descriptor];
  tensorAllocationSizeInBytes2 = [descriptor2 tensorAllocationSizeInBytes];

  if (tensorAllocationSizeInBytes != tensorAllocationSizeInBytes2)
  {
    v19 = +[MLCLog framework];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(a2);
      v23 = [tensorsCopy objectAtIndexedSubscript:0];
      descriptor3 = [v23 descriptor];
      tensorAllocationSizeInBytes3 = [descriptor3 tensorAllocationSizeInBytes];
      descriptor4 = [tensorCopy descriptor];
      *buf = 138412802;
      v32 = v22;
      v33 = 2048;
      v34 = tensorAllocationSizeInBytes3;
      v35 = 2048;
      tensorAllocationSizeInBytes4 = [descriptor4 tensorAllocationSizeInBytes];
      _os_log_error_impl(&dword_238C1D000, v19, OS_LOG_TYPE_ERROR, "%@: invalid result tensor size. sourceSize=%lu : resultSize=%lu", buf, 0x20u);
    }

    goto LABEL_13;
  }

  computeEngine = [deviceCopy computeEngine];
  shape = [(MLCReshapeLayer *)self shape];
  v19 = [computeEngine reshapeLayerWithShape:shape];

  if (!v19 || ![v19 count])
  {
    v27 = +[MLCLog framework];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [MLCScatterLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

LABEL_13:
    v21 = 0;
    goto LABEL_14;
  }

  computeEngine2 = [deviceCopy computeEngine];
  v21 = [computeEngine2 compileLayerDeviceOps:v19 sourceTensors:tensorsCopy resultTensor:tensorCopy];

  v30.receiver = self;
  v30.super_class = MLCReshapeLayer;
  [(MLCLayer *)&v30 bindDevice:deviceCopy deviceOps:v19];
LABEL_14:

  v28 = *MEMORY[0x277D85DE8];
  return v21;
}

- (unint64_t)resultSizeFromSourceSize:(unint64_t)size dimension:(unint64_t)dimension
{
  shape = [(MLCReshapeLayer *)self shape];
  v8 = [shape count];

  if (v8 <= dimension)
  {
    return 1;
  }

  shape2 = [(MLCReshapeLayer *)self shape];
  v10 = [shape2 objectAtIndexedSubscript:dimension];
  integerValue = [v10 integerValue];

  shape3 = [(MLCReshapeLayer *)self shape];
  v13 = shape3;
  if (integerValue == -1)
  {
    v17 = [shape3 count];

    if (v17)
    {
      v18 = 0;
      v19 = 1;
      do
      {
        if (dimension != v18)
        {
          shape4 = [(MLCReshapeLayer *)self shape];
          v21 = [shape4 objectAtIndexedSubscript:v18];
          v19 *= [v21 unsignedIntegerValue];
        }

        ++v18;
        shape5 = [(MLCReshapeLayer *)self shape];
        v23 = [shape5 count];
      }

      while (v18 < v23);
    }

    else
    {
      v19 = 1;
    }

    return size / v19;
  }

  else
  {
    v14 = [shape3 objectAtIndexedSubscript:dimension];
    unsignedIntegerValue = [v14 unsignedIntegerValue];

    return unsignedIntegerValue;
  }
}

- (id)resultTensorFromSources:(id)sources
{
  sourcesCopy = sources;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  v6 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor = [v6 descriptor];
  dimensionCount = [descriptor dimensionCount];

  if (dimensionCount)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = [sourcesCopy objectAtIndexedSubscript:0];
      descriptor2 = [v11 descriptor];
      shape = [descriptor2 shape];
      v14 = [shape objectAtIndexedSubscript:v9];
      v10 *= [v14 unsignedIntegerValue];

      ++v9;
      v15 = [sourcesCopy objectAtIndexedSubscript:0];
      descriptor3 = [v15 descriptor];
      dimensionCount2 = [descriptor3 dimensionCount];
    }

    while (v9 < dimensionCount2);
  }

  else
  {
    v10 = 1;
  }

  shape2 = [(MLCReshapeLayer *)self shape];
  v19 = [shape2 count];

  if (v19)
  {
    v20 = 0;
    do
    {
      v21 = [(MLCReshapeLayer *)self resultSizeFromSourceSize:v10 dimension:v20];
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
      [v5 setObject:v22 atIndexedSubscript:v20];

      ++v20;
      shape3 = [(MLCReshapeLayer *)self shape];
      v24 = [shape3 count];
    }

    while (v20 < v24);
  }

  v25 = [v5 copy];
  v26 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor4 = [v26 descriptor];
  v28 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v25, [descriptor4 dataType]);

  v29 = [MLCTensor tensorWithDescriptor:v28];

  return v29;
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
  shape = [(MLCReshapeLayer *)self shape];
  conditionalTreeNode = [(MLCLayer *)self conditionalTreeNode];
  resultTensors = [(MLCLayer *)self resultTensors];
  v9 = [v3 stringWithFormat:@"%@: { shape=%@ : conditionalTreeNode=%@ : resultTensor=%@ }", v5, shape, conditionalTreeNode, resultTensors];

  return v9;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  layerID = [(MLCLayer *)self layerID];
  shape = [(MLCReshapeLayer *)self shape];
  v8 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Shape: %@</FONT>>", v5, layerID, shape];

  return v8;
}

- (void)initWithShape:(const char *)a1 .cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithShape:(const char *)a1 .cold.2(const char *a1)
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

@end