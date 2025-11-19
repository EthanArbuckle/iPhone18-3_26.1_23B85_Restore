@interface MLCReshapeLayer
+ (MLCReshapeLayer)layerWithShape:(NSArray *)shape;
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (BOOL)isStaticBatchSize;
- (MLCReshapeLayer)initWithShape:(id)a3;
- (id)description;
- (id)resultTensorFromSources:(id)a3;
- (id)summarizedDOTDescription;
- (unint64_t)resultSizeFromSourceSize:(unint64_t)a3 dimension:(unint64_t)a4;
@end

@implementation MLCReshapeLayer

+ (MLCReshapeLayer)layerWithShape:(NSArray *)shape
{
  v4 = shape;
  v5 = [[a1 alloc] initWithShape:v4];

  return v5;
}

- (MLCReshapeLayer)initWithShape:(id)a3
{
  v6 = a3;
  if ([v6 count])
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = [v6 objectAtIndexedSubscript:v8];
      v10 = [v9 intValue];

      if (v10 == -1)
      {
        ++v7;
      }

      ++v8;
    }

    while (v8 < [v6 count]);
    if (v7 > 1)
    {
      v11 = +[MLCLog framework];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [MLCReshapeLayer initWithShape:a2];
      }

LABEL_12:

      v13 = 0;
      goto LABEL_16;
    }
  }

  v12 = [v6 count];
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
    objc_storeStrong(&v14->_shape, a3);
  }

  self = v15;
  v13 = self;
LABEL_16:

  return v13;
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v10 count] != 1)
  {
    v19 = +[MLCLog framework];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [MLCReshapeLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_13;
  }

  v12 = [v10 objectAtIndexedSubscript:0];
  v13 = [v12 descriptor];
  v14 = [v13 tensorAllocationSizeInBytes];
  v15 = [v11 descriptor];
  v16 = [v15 tensorAllocationSizeInBytes];

  if (v14 != v16)
  {
    v19 = +[MLCLog framework];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v22 = NSStringFromSelector(a2);
      v23 = [v10 objectAtIndexedSubscript:0];
      v24 = [v23 descriptor];
      v25 = [v24 tensorAllocationSizeInBytes];
      v26 = [v11 descriptor];
      *buf = 138412802;
      v32 = v22;
      v33 = 2048;
      v34 = v25;
      v35 = 2048;
      v36 = [v26 tensorAllocationSizeInBytes];
      _os_log_error_impl(&dword_238C1D000, v19, OS_LOG_TYPE_ERROR, "%@: invalid result tensor size. sourceSize=%lu : resultSize=%lu", buf, 0x20u);
    }

    goto LABEL_13;
  }

  v17 = [v9 computeEngine];
  v18 = [(MLCReshapeLayer *)self shape];
  v19 = [v17 reshapeLayerWithShape:v18];

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

  v20 = [v9 computeEngine];
  v21 = [v20 compileLayerDeviceOps:v19 sourceTensors:v10 resultTensor:v11];

  v30.receiver = self;
  v30.super_class = MLCReshapeLayer;
  [(MLCLayer *)&v30 bindDevice:v9 deviceOps:v19];
LABEL_14:

  v28 = *MEMORY[0x277D85DE8];
  return v21;
}

- (unint64_t)resultSizeFromSourceSize:(unint64_t)a3 dimension:(unint64_t)a4
{
  v7 = [(MLCReshapeLayer *)self shape];
  v8 = [v7 count];

  if (v8 <= a4)
  {
    return 1;
  }

  v9 = [(MLCReshapeLayer *)self shape];
  v10 = [v9 objectAtIndexedSubscript:a4];
  v11 = [v10 integerValue];

  v12 = [(MLCReshapeLayer *)self shape];
  v13 = v12;
  if (v11 == -1)
  {
    v17 = [v12 count];

    if (v17)
    {
      v18 = 0;
      v19 = 1;
      do
      {
        if (a4 != v18)
        {
          v20 = [(MLCReshapeLayer *)self shape];
          v21 = [v20 objectAtIndexedSubscript:v18];
          v19 *= [v21 unsignedIntegerValue];
        }

        ++v18;
        v22 = [(MLCReshapeLayer *)self shape];
        v23 = [v22 count];
      }

      while (v18 < v23);
    }

    else
    {
      v19 = 1;
    }

    return a3 / v19;
  }

  else
  {
    v14 = [v12 objectAtIndexedSubscript:a4];
    v15 = [v14 unsignedIntegerValue];

    return v15;
  }
}

- (id)resultTensorFromSources:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  v6 = [v4 objectAtIndexedSubscript:0];
  v7 = [v6 descriptor];
  v8 = [v7 dimensionCount];

  if (v8)
  {
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = [v4 objectAtIndexedSubscript:0];
      v12 = [v11 descriptor];
      v13 = [v12 shape];
      v14 = [v13 objectAtIndexedSubscript:v9];
      v10 *= [v14 unsignedIntegerValue];

      ++v9;
      v15 = [v4 objectAtIndexedSubscript:0];
      v16 = [v15 descriptor];
      v17 = [v16 dimensionCount];
    }

    while (v9 < v17);
  }

  else
  {
    v10 = 1;
  }

  v18 = [(MLCReshapeLayer *)self shape];
  v19 = [v18 count];

  if (v19)
  {
    v20 = 0;
    do
    {
      v21 = [(MLCReshapeLayer *)self resultSizeFromSourceSize:v10 dimension:v20];
      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
      [v5 setObject:v22 atIndexedSubscript:v20];

      ++v20;
      v23 = [(MLCReshapeLayer *)self shape];
      v24 = [v23 count];
    }

    while (v20 < v24);
  }

  v25 = [v5 copy];
  v26 = [v4 objectAtIndexedSubscript:0];
  v27 = [v26 descriptor];
  v28 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v25, [v27 dataType]);

  v29 = [MLCTensor tensorWithDescriptor:v28];

  return v29;
}

- (BOOL)isStaticBatchSize
{
  v14 = [(MLCLayer *)self sourceTensors];
  v3 = [v14 objectAtIndexedSubscript:0];
  v4 = [v3 descriptor];
  v5 = [v4 shape];
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 unsignedIntegerValue];
  v8 = [(MLCLayer *)self resultTensors];
  v9 = [v8 objectAtIndexedSubscript:0];
  v10 = [v9 descriptor];
  v11 = [v10 shape];
  v12 = [v11 objectAtIndexedSubscript:0];
  LOBYTE(v7) = v7 == [v12 unsignedIntegerValue];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCReshapeLayer *)self shape];
  v7 = [(MLCLayer *)self conditionalTreeNode];
  v8 = [(MLCLayer *)self resultTensors];
  v9 = [v3 stringWithFormat:@"%@: { shape=%@ : conditionalTreeNode=%@ : resultTensor=%@ }", v5, v6, v7, v8];

  return v9;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCLayer *)self layerID];
  v7 = [(MLCReshapeLayer *)self shape];
  v8 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Shape: %@</FONT>>", v5, v6, v7];

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