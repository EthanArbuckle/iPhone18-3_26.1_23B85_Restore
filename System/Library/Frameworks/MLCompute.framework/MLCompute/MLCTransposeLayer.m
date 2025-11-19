@interface MLCTransposeLayer
+ (BOOL)supportsDataType:(int)a3 onDevice:(id)a4;
+ (MLCTransposeLayer)layerWithDimensions:(NSArray *)dimensions;
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (BOOL)isStaticBatchSize;
- (BOOL)isSupportedShapeForTensorSources:(id)a3;
- (MLCTransposeLayer)initWithDimensions:(id)a3;
- (id)description;
- (id)resultTensorFromSources:(id)a3;
- (id)summarizedDOTDescription;
- (unint64_t)resultSizeFromSourceSize:(unint64_t)a3 dimension:(unint64_t)a4;
- (unint64_t)resultSizeFromSourceSizes:(id)a3 dimension:(unint64_t)a4;
@end

@implementation MLCTransposeLayer

+ (MLCTransposeLayer)layerWithDimensions:(NSArray *)dimensions
{
  v4 = dimensions;
  v5 = [[a1 alloc] initWithDimensions:v4];

  return v5;
}

- (MLCTransposeLayer)initWithDimensions:(id)a3
{
  v5 = a3;
  if ([v5 count] < 2)
  {
    v6 = +[MLCLog framework];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MLCTransposeLayer initWithDimensions:a2];
    }

LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  if ([v5 count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [v5 objectAtIndexedSubscript:v7];
      v9 = [v8 unsignedIntegerValue];
      v10 = [v5 count] - 1;

      if (v9 > v10)
      {
        break;
      }

      if (++v7 >= [v5 count])
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
    v12 = [v5 copy];
    dimensions = v11->_dimensions;
    v11->_dimensions = v12;
  }

  self = v11;
  v14 = self;
LABEL_16:

  return v14;
}

+ (BOOL)supportsDataType:(int)a3 onDevice:(id)a4
{
  if ([a4 type])
  {
    return a3 == 1;
  }

  else
  {
    return ((a3 - 1) & 0xFFFFFFFD) == 0;
  }
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v10 count] != 1)
  {
    v22 = +[MLCLog framework];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [MLCTransposeLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_17;
  }

  v12 = [v10 objectAtIndexedSubscript:0];
  v13 = [v12 descriptor];
  v14 = [v13 tensorAllocationSizeInBytes];
  v15 = [v11 descriptor];
  v16 = [v15 tensorAllocationSizeInBytes];

  if (v14 != v16)
  {
    v22 = +[MLCLog framework];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(a2);
      v26 = [v10 objectAtIndexedSubscript:0];
      v27 = [v26 descriptor];
      v28 = [v27 tensorAllocationSizeInBytes];
      v29 = [v11 descriptor];
      *buf = 138412802;
      v35 = v25;
      v36 = 2048;
      *v37 = v28;
      *&v37[8] = 2048;
      *&v37[10] = [v29 tensorAllocationSizeInBytes];
      _os_log_error_impl(&dword_238C1D000, v22, OS_LOG_TYPE_ERROR, "%@: invalid result tensor size. sourceSize=%lu : resultSize=%lu", buf, 0x20u);

LABEL_13:
    }

LABEL_17:
    v24 = 0;
    goto LABEL_18;
  }

  v17 = [v10 objectAtIndexedSubscript:0];
  v18 = [v17 descriptor];
  v19 = [v18 dataType];

  if (![MLCTransposeLayer supportsDataType:v19 onDevice:v9])
  {
    v22 = +[MLCLog framework];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(a2);
      *buf = 138412802;
      v35 = v25;
      v36 = 1024;
      *v37 = v19;
      *&v37[4] = 2112;
      *&v37[6] = v9;
      _os_log_error_impl(&dword_238C1D000, v22, OS_LOG_TYPE_ERROR, "%@: transpose layer with data type = %d is not supported on a device = %@", buf, 0x1Cu);
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  v20 = [v9 computeEngine];
  v21 = [(MLCTransposeLayer *)self dimensions];
  v22 = [v20 transposeLayerWithShape:v21];

  if (!v22 || ![v22 count])
  {
    v30 = +[MLCLog framework];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [MLCScatterLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_17;
  }

  v23 = [v9 computeEngine];
  v24 = [v23 compileLayerDeviceOps:v22 sourceTensors:v10 resultTensor:v11];

  v33.receiver = self;
  v33.super_class = MLCTransposeLayer;
  [(MLCLayer *)&v33 bindDevice:v9 deviceOps:v22];
LABEL_18:

  v31 = *MEMORY[0x277D85DE8];
  return v24;
}

- (unint64_t)resultSizeFromSourceSize:(unint64_t)a3 dimension:(unint64_t)a4
{
  v5 = [MLCLog framework:a3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCTransposeLayer resultSizeFromSourceSize:a2 dimension:?];
  }

  return 0;
}

- (unint64_t)resultSizeFromSourceSizes:(id)a3 dimension:(unint64_t)a4
{
  v6 = a3;
  v7 = [(MLCTransposeLayer *)self dimensions];
  v8 = [v7 objectAtIndexedSubscript:a4];
  v9 = [v8 unsignedIntegerValue];

  v10 = [v6 objectAtIndexedSubscript:v9];

  v11 = [v10 unsignedIntegerValue];
  return v11;
}

- (id)resultTensorFromSources:(id)a3
{
  v5 = a3;
  v6 = [v5 objectAtIndexedSubscript:0];
  v7 = [v6 descriptor];
  v8 = [v7 shape];
  v9 = [v8 count];
  v10 = [(MLCTransposeLayer *)self dimensions];
  v11 = [v10 count];

  if (v9 == v11)
  {
    v12 = [MEMORY[0x277CBEBF8] mutableCopy];
    for (i = 0; ; ++i)
    {
      v14 = [v5 objectAtIndexedSubscript:0];
      v15 = [v14 descriptor];
      v16 = [v15 shape];
      v17 = [v16 count];

      if (i >= v17)
      {
        break;
      }

      v18 = [v5 objectAtIndexedSubscript:0];
      v19 = [v18 descriptor];
      v20 = [v19 shape];
      v21 = [(MLCTransposeLayer *)self resultSizeFromSourceSizes:v20 dimension:i];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v21];
      [v12 setObject:v22 atIndexedSubscript:i];
    }

    v23 = [v12 copy];
    v24 = [v5 objectAtIndexedSubscript:0];
    v25 = [v24 descriptor];
    v26 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v23, [v25 dataType]);

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

- (BOOL)isSupportedShapeForTensorSources:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    v4 = 0;
    do
    {
      v5 = [v3 objectAtIndexedSubscript:v4];
      v6 = [v5 descriptor];
      v7 = [v6 shape];
      v8 = [v7 count];

      v9 = v8 > 1;
      if (v8 <= 1)
      {
        break;
      }

      ++v4;
    }

    while (v4 < [v3 count]);
  }

  else
  {
    v9 = 1;
  }

  return v9;
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
  v6 = [(MLCTransposeLayer *)self dimensions];
  v7 = [(MLCLayer *)self conditionalTreeNode];
  v8 = [(MLCLayer *)self resultTensors];
  v9 = [v3 stringWithFormat:@"%@: { dimensions=%@ : conditionalTreeNode=%@ : resultTensor=%@ }", v5, v6, v7, v8];

  return v9;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCLayer *)self layerID];
  v7 = [(MLCTransposeLayer *)self dimensions];
  v8 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Permutation: %@</FONT>>", v5, v6, v7];

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