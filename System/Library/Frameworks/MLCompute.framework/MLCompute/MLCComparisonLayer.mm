@interface MLCComparisonLayer
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (MLCComparisonLayer)initWithOperation:(int)operation;
- (id)description;
- (id)resultTensorFromSources:(id)sources;
- (id)summarizedDOTDescription;
@end

@implementation MLCComparisonLayer

- (MLCComparisonLayer)initWithOperation:(int)operation
{
  v5.receiver = self;
  v5.super_class = MLCComparisonLayer;
  result = [(MLCLayer *)&v5 initWithLabel:@"Compare"];
  if (result)
  {
    result->_operation = operation;
  }

  return result;
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  operation = [(MLCComparisonLayer *)self operation];
  if ((operation - 6) >= 6)
  {
    if ((operation - 2) <= 3)
    {
      if ([tensorsCopy count])
      {
        v18 = 0;
        do
        {
          v19 = [tensorsCopy objectAtIndexedSubscript:v18];
          descriptor = [v19 descriptor];
          dataType = [descriptor dataType];

          v22 = dataType == 4;
          if (dataType == 4)
          {
            break;
          }

          ++v18;
        }

        while (v18 < [tensorsCopy count]);
      }

      else
      {
        v22 = 0;
      }

      descriptor2 = [tensorCopy descriptor];
      dataType2 = [descriptor2 dataType];

      if (v22 || dataType2 != 4)
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
    if ([tensorsCopy count])
    {
      v13 = 0;
      do
      {
        v14 = [tensorsCopy objectAtIndexedSubscript:v13];
        descriptor3 = [v14 descriptor];
        dataType3 = [descriptor3 dataType];

        v17 = dataType3 != 4;
        if (dataType3 != 4)
        {
          break;
        }

        ++v13;
      }

      while (v13 < [tensorsCopy count]);
    }

    else
    {
      v17 = 0;
    }

    descriptor4 = [tensorCopy descriptor];
    dataType4 = [descriptor4 dataType];

    if (v17 || dataType4 != 4)
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

  computeEngine = [deviceCopy computeEngine];
  v25 = [computeEngine compareLayerWithOperation:{-[MLCComparisonLayer operation](self, "operation")}];

  if (!v25 || ![v25 count])
  {
    v31 = +[MLCLog framework];
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [MLCSplitLayer compileForDevice:a2 sourceTensors:? resultTensors:?];
    }

    goto LABEL_29;
  }

  computeEngine2 = [deviceCopy computeEngine];
  v30 = [computeEngine2 compileLayerDeviceOps:v25 sourceTensors:tensorsCopy resultTensor:tensorCopy];

  v33.receiver = self;
  v33.super_class = MLCComparisonLayer;
  [(MLCLayer *)&v33 bindDevice:deviceCopy deviceOps:v25];
LABEL_30:

  return v30;
}

- (id)resultTensorFromSources:(id)sources
{
  v5.receiver = self;
  v5.super_class = MLCComparisonLayer;
  v3 = [(MLCLayer *)&v5 resultTensorsFromBroadcastableSources:sources resultTensorDataType:4];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  operation = [(MLCComparisonLayer *)self operation];
  conditionalTreeNode = [(MLCLayer *)self conditionalTreeNode];
  resultTensors = [(MLCLayer *)self resultTensors];
  v9 = [v3 stringWithFormat:@"%@: { compare operation=%d : conditionalTreeNode=%@ : resultTensor=%@ }", v5, operation, conditionalTreeNode, resultTensors];

  return v9;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  layerID = [(MLCLayer *)self layerID];
  v7 = MLCComparisonOperationDebugDescription([(MLCComparisonLayer *)self operation]);
  v8 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Predicate: %@</FONT>>", v5, layerID, v7];

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