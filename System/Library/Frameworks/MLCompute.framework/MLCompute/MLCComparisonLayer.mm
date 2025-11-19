@interface MLCComparisonLayer
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (MLCComparisonLayer)initWithOperation:(int)a3;
- (id)description;
- (id)resultTensorFromSources:(id)a3;
- (id)summarizedDOTDescription;
@end

@implementation MLCComparisonLayer

- (MLCComparisonLayer)initWithOperation:(int)a3
{
  v5.receiver = self;
  v5.super_class = MLCComparisonLayer;
  result = [(MLCLayer *)&v5 initWithLabel:@"Compare"];
  if (result)
  {
    result->_operation = a3;
  }

  return result;
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(MLCComparisonLayer *)self operation];
  if ((v12 - 6) >= 6)
  {
    if ((v12 - 2) <= 3)
    {
      if ([v10 count])
      {
        v18 = 0;
        do
        {
          v19 = [v10 objectAtIndexedSubscript:v18];
          v20 = [v19 descriptor];
          v21 = [v20 dataType];

          v22 = v21 == 4;
          if (v21 == 4)
          {
            break;
          }

          ++v18;
        }

        while (v18 < [v10 count]);
      }

      else
      {
        v22 = 0;
      }

      v26 = [v11 descriptor];
      v27 = [v26 dataType];

      if (v22 || v27 != 4)
      {
        v25 = +[MLCLog framework];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [MLCComparisonLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
        }

        goto LABEL_29;
      }
    }
  }

  else
  {
    if ([v10 count])
    {
      v13 = 0;
      do
      {
        v14 = [v10 objectAtIndexedSubscript:v13];
        v15 = [v14 descriptor];
        v16 = [v15 dataType];

        v17 = v16 != 4;
        if (v16 != 4)
        {
          break;
        }

        ++v13;
      }

      while (v13 < [v10 count]);
    }

    else
    {
      v17 = 0;
    }

    v23 = [v11 descriptor];
    v24 = [v23 dataType];

    if (v17 || v24 != 4)
    {
      v25 = +[MLCLog framework];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [MLCComparisonLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
      }

LABEL_29:
      v30 = 0;
      goto LABEL_30;
    }
  }

  v28 = [v9 computeEngine];
  v25 = [v28 compareLayerWithOperation:{-[MLCComparisonLayer operation](self, "operation")}];

  if (!v25 || ![v25 count])
  {
    v31 = +[MLCLog framework];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [MLCSplitLayer compileForDevice:a2 sourceTensors:? resultTensors:?];
    }

    goto LABEL_29;
  }

  v29 = [v9 computeEngine];
  v30 = [v29 compileLayerDeviceOps:v25 sourceTensors:v10 resultTensor:v11];

  v33.receiver = self;
  v33.super_class = MLCComparisonLayer;
  [(MLCLayer *)&v33 bindDevice:v9 deviceOps:v25];
LABEL_30:

  return v30;
}

- (id)resultTensorFromSources:(id)a3
{
  v5.receiver = self;
  v5.super_class = MLCComparisonLayer;
  v3 = [(MLCLayer *)&v5 resultTensorsFromBroadcastableSources:a3 resultTensorDataType:4];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCComparisonLayer *)self operation];
  v7 = [(MLCLayer *)self conditionalTreeNode];
  v8 = [(MLCLayer *)self resultTensors];
  v9 = [v3 stringWithFormat:@"%@: { compare operation=%d : conditionalTreeNode=%@ : resultTensor=%@ }", v5, v6, v7, v8];

  return v9;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCLayer *)self layerID];
  v7 = MLCComparisonOperationDebugDescription([(MLCComparisonLayer *)self operation]);
  v8 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Predicate: %@</FONT>>", v5, v6, v7];

  return v8;
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end