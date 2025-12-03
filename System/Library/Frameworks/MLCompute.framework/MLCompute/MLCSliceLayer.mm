@interface MLCSliceLayer
+ (MLCSliceLayer)sliceLayerWithStart:(NSArray *)start end:(NSArray *)end stride:(NSArray *)stride;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (BOOL)isStaticBatchSize;
- (BOOL)isSupportedShapeForTensorSources:(id)sources;
- (id)description;
- (id)initSliceLayerWithStart:(id)start end:(id)end stride:(id)stride;
- (id)resultTensorFromSources:(id)sources;
- (id)summarizedDOTDescription;
- (unint64_t)resultSizeForDimension:(unint64_t)dimension;
@end

@implementation MLCSliceLayer

+ (MLCSliceLayer)sliceLayerWithStart:(NSArray *)start end:(NSArray *)end stride:(NSArray *)stride
{
  v8 = stride;
  v9 = end;
  v10 = start;
  v11 = [[self alloc] initSliceLayerWithStart:v10 end:v9 stride:v8];

  return v11;
}

- (id)initSliceLayerWithStart:(id)start end:(id)end stride:(id)stride
{
  startCopy = start;
  endCopy = end;
  strideCopy = stride;
  v13 = [startCopy count];
  if (v13 != [endCopy count])
  {
    v25 = +[MLCLog framework];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [MLCSliceLayer initSliceLayerWithStart:a2 end:? stride:?];
    }

    goto LABEL_28;
  }

  if (strideCopy)
  {
    v14 = [strideCopy count];
    if (v14 != [endCopy count])
    {
      v25 = +[MLCLog framework];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [MLCSliceLayer initSliceLayerWithStart:a2 end:? stride:?];
      }

      goto LABEL_28;
    }
  }

  endCopy2 = end;
  v34 = a2;
  selfCopy = self;
  if (![startCopy count])
  {
LABEL_10:
    self = selfCopy;
    if (!strideCopy || ![startCopy count])
    {
LABEL_15:
      v25 = [MEMORY[0x277CBEBF8] mutableCopy];
      if ([startCopy count])
      {
        v26 = 0;
        do
        {
          [v25 addObject:&unk_284BA5CF0];
          ++v26;
        }

        while (v26 < [startCopy count]);
      }

      v36.receiver = selfCopy;
      v36.super_class = MLCSliceLayer;
      v27 = [(MLCLayer *)&v36 initWithLabel:@"Slice"];
      p_isa = &v27->super.super.isa;
      if (v27)
      {
        objc_storeStrong(&v27->_start, obj);
        objc_storeStrong(p_isa + 26, endCopy2);
        if (strideCopy)
        {
          v29 = strideCopy;
        }

        else
        {
          v29 = v25;
        }

        objc_storeStrong(p_isa + 27, v29);
      }

      self = p_isa;
      selfCopy2 = self;
      goto LABEL_29;
    }

    v22 = 0;
    while (1)
    {
      v23 = [strideCopy objectAtIndexedSubscript:v22];
      integerValue = [v23 integerValue];

      if (integerValue <= 0)
      {
        break;
      }

      if (++v22 >= [startCopy count])
      {
        goto LABEL_15;
      }
    }

    v25 = +[MLCLog framework];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [MLCSliceLayer initSliceLayerWithStart:v34 end:? stride:?];
    }

LABEL_28:
    selfCopy2 = 0;
    goto LABEL_29;
  }

  v15 = 0;
  while (1)
  {
    v16 = [startCopy objectAtIndexedSubscript:v15];
    if ([v16 integerValue] < 0)
    {
      break;
    }

    v17 = [endCopy objectAtIndexedSubscript:v15];
    if ([v17 integerValue] <= 0)
    {

      break;
    }

    v18 = [endCopy objectAtIndexedSubscript:v15];
    unsignedIntegerValue = [v18 unsignedIntegerValue];
    v20 = [startCopy objectAtIndexedSubscript:v15];
    unsignedIntegerValue2 = [v20 unsignedIntegerValue];

    if (unsignedIntegerValue <= unsignedIntegerValue2)
    {
      goto LABEL_32;
    }

    if (++v15 >= [startCopy count])
    {
      goto LABEL_10;
    }
  }

LABEL_32:
  v25 = +[MLCLog framework];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    [MLCSliceLayer initSliceLayerWithStart:v34 end:? stride:?];
  }

  selfCopy2 = 0;
  self = selfCopy;
LABEL_29:

  return selfCopy2;
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v83 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v11 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v11 descriptor];
  dimensionCount = [descriptor dimensionCount];
  selfCopy = self;
  start = [(MLCSliceLayer *)self start];
  v15 = [start count];

  if (dimensionCount != v15)
  {
    v66 = +[MLCLog framework];
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      [MLCSliceLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_24;
  }

  v16 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor2 = [v16 descriptor];
  dataType = [descriptor2 dataType];

  if (![(MLCLayer *)MLCSliceLayer supportsDataType:dataType onDevice:deviceCopy])
  {
    v66 = +[MLCLog framework];
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v69 = NSStringFromSelector(a2);
      *buf = 138412802;
      v78 = v69;
      v79 = 1024;
      v80 = dataType;
      v81 = 2112;
      v82 = deviceCopy;
      _os_log_error_impl(&dword_238C1D000, v66, OS_LOG_TYPE_ERROR, "%@: slice layer with data type = %d is not supported on a device = %@", buf, 0x1Cu);
    }

LABEL_24:
    v68 = 0;
    v52 = tensorCopy;
    goto LABEL_25;
  }

  v73 = deviceCopy;
  v19 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor3 = [v19 descriptor];
  dimensionCount2 = [descriptor3 dimensionCount];

  if (dimensionCount2 >= 2)
  {
    v22 = 1;
    while (1)
    {
      v23 = [(MLCSliceLayer *)selfCopy end];
      v24 = [v23 objectAtIndexedSubscript:v22];
      unsignedIntegerValue = [v24 unsignedIntegerValue];
      v26 = [tensorsCopy objectAtIndexedSubscript:0];
      descriptor4 = [v26 descriptor];
      shape = [descriptor4 shape];
      v29 = [shape objectAtIndexedSubscript:v22];
      unsignedIntegerValue2 = [v29 unsignedIntegerValue];

      if (unsignedIntegerValue > unsignedIntegerValue2)
      {
        break;
      }

      ++v22;
      v31 = [tensorsCopy objectAtIndexedSubscript:0];
      descriptor5 = [v31 descriptor];
      dimensionCount3 = [descriptor5 dimensionCount];

      if (v22 >= dimensionCount3)
      {
        goto LABEL_7;
      }
    }

    v66 = +[MLCLog framework];
    deviceCopy = v73;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      [MLCSliceLayer compileForDevice:sourceTensors:resultTensor:];
    }

    goto LABEL_24;
  }

LABEL_7:
  v34 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor6 = [v34 descriptor];
  dimensionCount4 = [descriptor6 dimensionCount];

  if (dimensionCount4 < 2)
  {
LABEL_11:
    v49 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor7 = [v49 descriptor];
    dimensionCount5 = [descriptor7 dimensionCount];

    v52 = tensorCopy;
    if (dimensionCount5 < 2)
    {
LABEL_15:
      computeEngine = [v73 computeEngine];
      start2 = [(MLCSliceLayer *)selfCopy start];
      v64 = [(MLCSliceLayer *)selfCopy end];
      stride = [(MLCSliceLayer *)selfCopy stride];
      v66 = [computeEngine sliceLayerWithbegin:start2 end:v64 stride:stride inferenceOnly:{-[MLCLayer compileForInferenceOnly](selfCopy, "compileForInferenceOnly")}];

      if (v66 && [v66 count])
      {
        deviceCopy = v73;
        computeEngine2 = [v73 computeEngine];
        v68 = [computeEngine2 compileLayerDeviceOps:v66 sourceTensors:tensorsCopy resultTensor:tensorCopy];

        v76.receiver = selfCopy;
        v76.super_class = MLCSliceLayer;
        [(MLCLayer *)&v76 bindDevice:v73 deviceOps:v66];
        goto LABEL_25;
      }

      v72 = +[MLCLog framework];
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        [MLCBatchNormalizationLayer compileForDevice:sourceTensors:resultTensor:];
      }
    }

    else
    {
      v53 = 1;
      while (1)
      {
        v54 = [(MLCSliceLayer *)selfCopy resultSizeForDimension:v53];
        descriptor8 = [tensorCopy descriptor];
        shape2 = [descriptor8 shape];
        v57 = [shape2 objectAtIndexedSubscript:v53];
        unsignedIntegerValue3 = [v57 unsignedIntegerValue];

        if (v54 != unsignedIntegerValue3)
        {
          break;
        }

        ++v53;
        v59 = [tensorsCopy objectAtIndexedSubscript:0];
        descriptor9 = [v59 descriptor];
        dimensionCount6 = [descriptor9 dimensionCount];

        if (v53 >= dimensionCount6)
        {
          goto LABEL_15;
        }
      }

      v66 = +[MLCLog framework];
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        [MLCSliceLayer compileForDevice:sourceTensors:resultTensor:];
      }
    }

    v68 = 0;
    deviceCopy = v73;
    goto LABEL_25;
  }

  v37 = 1;
  while (1)
  {
    start3 = [(MLCSliceLayer *)selfCopy start];
    v39 = [start3 objectAtIndexedSubscript:v37];
    unsignedIntegerValue4 = [v39 unsignedIntegerValue];
    v41 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor10 = [v41 descriptor];
    shape3 = [descriptor10 shape];
    v44 = [shape3 objectAtIndexedSubscript:v37];
    v45 = [v44 unsignedIntegerValue] - 1;

    if (unsignedIntegerValue4 > v45)
    {
      break;
    }

    ++v37;
    v46 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor11 = [v46 descriptor];
    dimensionCount7 = [descriptor11 dimensionCount];

    if (v37 >= dimensionCount7)
    {
      goto LABEL_11;
    }
  }

  v66 = +[MLCLog framework];
  deviceCopy = v73;
  v52 = tensorCopy;
  if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
  {
    [MLCSliceLayer compileForDevice:sourceTensors:resultTensor:];
  }

  v68 = 0;
LABEL_25:

  v70 = *MEMORY[0x277D85DE8];
  return v68;
}

- (unint64_t)resultSizeForDimension:(unint64_t)dimension
{
  stride = [(MLCSliceLayer *)self stride];
  v6 = [stride objectAtIndexedSubscript:dimension];
  integerValue = [v6 integerValue];
  if (integerValue >= 0)
  {
    v8 = integerValue;
  }

  else
  {
    v8 = -integerValue;
  }

  v9 = [(MLCSliceLayer *)self end];
  v10 = [v9 objectAtIndexedSubscript:dimension];
  unsignedIntegerValue = [v10 unsignedIntegerValue];
  start = [(MLCSliceLayer *)self start];
  v13 = [start objectAtIndexedSubscript:dimension];
  v14 = (unsignedIntegerValue + ~[v13 unsignedIntegerValue]) / v8;

  return v14 + 1;
}

- (id)resultTensorFromSources:(id)sources
{
  sourcesCopy = sources;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  for (i = 0; ; ++i)
  {
    v7 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor = [v7 descriptor];
    shape = [descriptor shape];
    v10 = [shape count];

    if (i >= v10)
    {
      break;
    }

    v11 = [(MLCSliceLayer *)self resultSizeForDimension:i];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
    [v5 setObject:v12 atIndexedSubscript:i];
  }

  v13 = [v5 copy];
  v14 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor2 = [v14 descriptor];
  v16 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v13, [descriptor2 dataType]);

  v17 = [MLCTensor tensorWithDescriptor:v16];

  return v17;
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
  start = [(MLCSliceLayer *)self start];
  v7 = [(MLCSliceLayer *)self end];
  stride = [(MLCSliceLayer *)self stride];
  v9 = [v3 stringWithFormat:@"%@: { start=%@ : end=%@ : stride=%@ }", v5, start, v7, stride];

  return v9;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  layerID = [(MLCLayer *)self layerID];
  start = [(MLCSliceLayer *)self start];
  v8 = [(MLCSliceLayer *)self end];
  stride = [(MLCSliceLayer *)self stride];
  v10 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Start: %@    End: %@<BR />Stride: %@</FONT>>", v5, layerID, start, v8, stride];

  return v10;
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

- (void)initSliceLayerWithStart:(const char *)a1 end:stride:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initSliceLayerWithStart:(const char *)a1 end:stride:.cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initSliceLayerWithStart:(const char *)a1 end:stride:.cold.3(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)initSliceLayerWithStart:(const char *)a1 end:stride:.cold.4(const char *a1)
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

- (void)compileForDevice:sourceTensors:resultTensor:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:sourceTensors:resultTensor:.cold.4()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:sourceTensors:resultTensor:.cold.5()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end