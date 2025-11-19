@interface MLCConcatenationLayer
+ (MLCConcatenationLayer)layer;
+ (MLCConcatenationLayer)layerWithDimension:(NSUInteger)dimension;
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (MLCConcatenationLayer)initWithDimension:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)resultTensorFromSources:(id)a3;
- (id)summarizedDOTDescription;
@end

@implementation MLCConcatenationLayer

+ (MLCConcatenationLayer)layer
{
  v2 = [[a1 alloc] initWithDimension:1];

  return v2;
}

+ (MLCConcatenationLayer)layerWithDimension:(NSUInteger)dimension
{
  v3 = [[a1 alloc] initWithDimension:dimension];

  return v3;
}

- (MLCConcatenationLayer)initWithDimension:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = MLCConcatenationLayer;
  result = [(MLCLayer *)&v5 initWithLabel:@"Concat"];
  if (result)
  {
    result->_dimension = a3;
  }

  return result;
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v55 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v34 = +[MLCLog framework];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [MLCConcatenationLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_35;
  }

  if (![v10 count])
  {
    v34 = +[MLCLog framework];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [MLCConcatenationLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_35;
  }

  aSelector = a2;
  v12 = [v10 count];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    while (1)
    {
      v15 = [v10 objectAtIndexedSubscript:v14];
      v16 = [v15 descriptor];
      v17 = [v16 dataType];

      if (![MLCConcatenationLayer supportsDataType:v17 onDevice:v9])
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
      v52 = v17;
      v53 = 2112;
      v54 = v9;
      _os_log_error_impl(&dword_238C1D000, v34, OS_LOG_TYPE_ERROR, "%@: sourceTensor[%lu] uses unsupported data type = %d on a device = %@", buf, 0x26u);
    }

    goto LABEL_35;
  }

LABEL_7:
  v18 = [v10 objectAtIndexedSubscript:0];
  v19 = [v18 descriptor];
  v20 = [v19 shape];
  v21 = [v20 count];

  if ([v10 count] >= 2)
  {
    v22 = 1;
    while (1)
    {
      v23 = [v10 objectAtIndexedSubscript:v22];
      v24 = [v23 descriptor];
      v25 = [v24 shape];
      v26 = [v25 count];

      if (v21 != v26)
      {
        break;
      }

      if (++v22 >= [v10 count])
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
  v27 = [v9 computeEngine];
  v28 = objc_opt_respondsToSelector();

  v29 = [v9 computeEngine];
  if ((v28 & 1) == 0)
  {
    v38 = objc_opt_respondsToSelector();

    if ((v38 & 1) == 0)
    {
      v34 = 0;
      v36 = 1;
      goto LABEL_31;
    }

    v39 = [v9 computeEngine];
    v34 = [v39 splitLayerWithDimension:{-[MLCConcatenationLayer dimension](self, "dimension")}];

    if (v34 && [v34 count])
    {
      v35 = [v9 computeEngine];
      v46 = v11;
      v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
      v36 = [v35 compileLayerDeviceOps:v34 sourceTensors:v10 resultTensors:v40];

      goto LABEL_25;
    }

    v41 = +[MLCLog framework];
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v30 = [(MLCConcatenationLayer *)self dimension];
  v31 = [v10 objectAtIndexedSubscript:0];
  v32 = [v31 descriptor];
  v33 = [v32 shape];
  v34 = [v29 concatLayerWithConcatDimension:v30 sourceShapeCount:{objc_msgSend(v33, "count")}];

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

  v35 = [v9 computeEngine];
  v36 = [v35 compileLayerDeviceOps:v34 sourceTensors:v10 resultTensor:v11];
LABEL_25:

LABEL_31:
  v45.receiver = self;
  v45.super_class = MLCConcatenationLayer;
  [(MLCLayer *)&v45 bindDevice:v9 deviceOps:v34];
LABEL_36:

  v42 = *MEMORY[0x277D85DE8];
  return v36;
}

- (id)resultTensorFromSources:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  v6 = 0;
  v35 = 0u;
  v36 = 0u;
  while (1)
  {
    v7 = [v4 objectAtIndexedSubscript:{0, v35, v36}];
    v8 = [v7 descriptor];
    v9 = [v8 shape];
    v10 = [v9 count];

    if (v6 >= v10)
    {
      break;
    }

    v11 = [v4 objectAtIndexedSubscript:0];
    v12 = [v11 descriptor];
    v13 = [v12 shape];
    v14 = [v13 objectAtIndexedSubscript:v6];
    *(&v35 + v6) = [v14 unsignedIntegerValue];

    ++v6;
  }

  if ([v4 count] >= 2)
  {
    v15 = 1;
    do
    {
      v16 = [v4 objectAtIndexedSubscript:v15];
      v17 = [v16 descriptor];
      v18 = [v17 shape];
      v19 = [v18 objectAtIndexedSubscript:{-[MLCConcatenationLayer dimension](self, "dimension")}];
      v20 = [v19 unsignedIntegerValue];
      v21 = [(MLCConcatenationLayer *)self dimension];
      *(&v35 + v21) += v20;

      ++v15;
    }

    while (v15 < [v4 count]);
  }

  for (i = 0; ; ++i)
  {
    v23 = [v4 objectAtIndexedSubscript:0];
    v24 = [v23 descriptor];
    v25 = [v24 shape];
    v26 = [v25 count];

    if (i >= v26)
    {
      break;
    }

    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(&v35 + i)];
    [v5 setObject:v27 atIndexedSubscript:i];
  }

  v28 = [v5 copy];
  v29 = [v4 objectAtIndexedSubscript:0];
  v30 = [v29 descriptor];
  v31 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v28, [v30 dataType]);

  v32 = [MLCTensor tensorWithDescriptor:v31];

  v33 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCConcatenationLayer *)self dimension];
  v7 = [(MLCLayer *)self conditionalTreeNode];
  v8 = [(MLCLayer *)self resultTensors];
  v9 = [v3 stringWithFormat:@"%@: { dimension=%lu : conditionalTreeNode=%@ : resultTensor=%@ }", v5, v6, v7, v8];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MLCConcatenationLayer *)self dimension];

  return [v4 initWithDimension:v5];
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