@interface MLCSliceLayer
+ (MLCSliceLayer)sliceLayerWithStart:(NSArray *)start end:(NSArray *)end stride:(NSArray *)stride;
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (BOOL)isStaticBatchSize;
- (BOOL)isSupportedShapeForTensorSources:(id)a3;
- (id)description;
- (id)initSliceLayerWithStart:(id)a3 end:(id)a4 stride:(id)a5;
- (id)resultTensorFromSources:(id)a3;
- (id)summarizedDOTDescription;
- (unint64_t)resultSizeForDimension:(unint64_t)a3;
@end

@implementation MLCSliceLayer

+ (MLCSliceLayer)sliceLayerWithStart:(NSArray *)start end:(NSArray *)end stride:(NSArray *)stride
{
  v8 = stride;
  v9 = end;
  v10 = start;
  v11 = [[a1 alloc] initSliceLayerWithStart:v10 end:v9 stride:v8];

  return v11;
}

- (id)initSliceLayerWithStart:(id)a3 end:(id)a4 stride:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 count];
  if (v13 != [v11 count])
  {
    v25 = +[MLCLog framework];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [MLCSliceLayer initSliceLayerWithStart:a2 end:? stride:?];
    }

    goto LABEL_28;
  }

  if (v12)
  {
    v14 = [v12 count];
    if (v14 != [v11 count])
    {
      v25 = +[MLCLog framework];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [MLCSliceLayer initSliceLayerWithStart:a2 end:? stride:?];
      }

      goto LABEL_28;
    }
  }

  v33 = a4;
  v34 = a2;
  v35 = self;
  if (![v10 count])
  {
LABEL_10:
    self = v35;
    if (!v12 || ![v10 count])
    {
LABEL_15:
      v25 = [MEMORY[0x277CBEBF8] mutableCopy];
      if ([v10 count])
      {
        v26 = 0;
        do
        {
          [v25 addObject:&unk_284BA5CF0];
          ++v26;
        }

        while (v26 < [v10 count]);
      }

      v36.receiver = v35;
      v36.super_class = MLCSliceLayer;
      v27 = [(MLCLayer *)&v36 initWithLabel:@"Slice"];
      p_isa = &v27->super.super.isa;
      if (v27)
      {
        objc_storeStrong(&v27->_start, obj);
        objc_storeStrong(p_isa + 26, v33);
        if (v12)
        {
          v29 = v12;
        }

        else
        {
          v29 = v25;
        }

        objc_storeStrong(p_isa + 27, v29);
      }

      self = p_isa;
      v30 = self;
      goto LABEL_29;
    }

    v22 = 0;
    while (1)
    {
      v23 = [v12 objectAtIndexedSubscript:v22];
      v24 = [v23 integerValue];

      if (v24 <= 0)
      {
        break;
      }

      if (++v22 >= [v10 count])
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
    v30 = 0;
    goto LABEL_29;
  }

  v15 = 0;
  while (1)
  {
    v16 = [v10 objectAtIndexedSubscript:v15];
    if ([v16 integerValue] < 0)
    {
      break;
    }

    v17 = [v11 objectAtIndexedSubscript:v15];
    if ([v17 integerValue] <= 0)
    {

      break;
    }

    v18 = [v11 objectAtIndexedSubscript:v15];
    v19 = [v18 unsignedIntegerValue];
    v20 = [v10 objectAtIndexedSubscript:v15];
    v21 = [v20 unsignedIntegerValue];

    if (v19 <= v21)
    {
      goto LABEL_32;
    }

    if (++v15 >= [v10 count])
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

  v30 = 0;
  self = v35;
LABEL_29:

  return v30;
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v83 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v74 = a5;
  v11 = [v10 objectAtIndexedSubscript:0];
  v12 = [v11 descriptor];
  v13 = [v12 dimensionCount];
  v75 = self;
  v14 = [(MLCSliceLayer *)self start];
  v15 = [v14 count];

  if (v13 != v15)
  {
    v66 = +[MLCLog framework];
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      [MLCSliceLayer compileForDevice:a2 sourceTensors:? resultTensor:?];
    }

    goto LABEL_24;
  }

  v16 = [v10 objectAtIndexedSubscript:0];
  v17 = [v16 descriptor];
  v18 = [v17 dataType];

  if (![(MLCLayer *)MLCSliceLayer supportsDataType:v18 onDevice:v9])
  {
    v66 = +[MLCLog framework];
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      v69 = NSStringFromSelector(a2);
      *buf = 138412802;
      v78 = v69;
      v79 = 1024;
      v80 = v18;
      v81 = 2112;
      v82 = v9;
      _os_log_error_impl(&dword_238C1D000, v66, OS_LOG_TYPE_ERROR, "%@: slice layer with data type = %d is not supported on a device = %@", buf, 0x1Cu);
    }

LABEL_24:
    v68 = 0;
    v52 = v74;
    goto LABEL_25;
  }

  v73 = v9;
  v19 = [v10 objectAtIndexedSubscript:0];
  v20 = [v19 descriptor];
  v21 = [v20 dimensionCount];

  if (v21 >= 2)
  {
    v22 = 1;
    while (1)
    {
      v23 = [(MLCSliceLayer *)v75 end];
      v24 = [v23 objectAtIndexedSubscript:v22];
      v25 = [v24 unsignedIntegerValue];
      v26 = [v10 objectAtIndexedSubscript:0];
      v27 = [v26 descriptor];
      v28 = [v27 shape];
      v29 = [v28 objectAtIndexedSubscript:v22];
      v30 = [v29 unsignedIntegerValue];

      if (v25 > v30)
      {
        break;
      }

      ++v22;
      v31 = [v10 objectAtIndexedSubscript:0];
      v32 = [v31 descriptor];
      v33 = [v32 dimensionCount];

      if (v22 >= v33)
      {
        goto LABEL_7;
      }
    }

    v66 = +[MLCLog framework];
    v9 = v73;
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      [MLCSliceLayer compileForDevice:sourceTensors:resultTensor:];
    }

    goto LABEL_24;
  }

LABEL_7:
  v34 = [v10 objectAtIndexedSubscript:0];
  v35 = [v34 descriptor];
  v36 = [v35 dimensionCount];

  if (v36 < 2)
  {
LABEL_11:
    v49 = [v10 objectAtIndexedSubscript:0];
    v50 = [v49 descriptor];
    v51 = [v50 dimensionCount];

    v52 = v74;
    if (v51 < 2)
    {
LABEL_15:
      v62 = [v73 computeEngine];
      v63 = [(MLCSliceLayer *)v75 start];
      v64 = [(MLCSliceLayer *)v75 end];
      v65 = [(MLCSliceLayer *)v75 stride];
      v66 = [v62 sliceLayerWithbegin:v63 end:v64 stride:v65 inferenceOnly:{-[MLCLayer compileForInferenceOnly](v75, "compileForInferenceOnly")}];

      if (v66 && [v66 count])
      {
        v9 = v73;
        v67 = [v73 computeEngine];
        v68 = [v67 compileLayerDeviceOps:v66 sourceTensors:v10 resultTensor:v74];

        v76.receiver = v75;
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
        v54 = [(MLCSliceLayer *)v75 resultSizeForDimension:v53];
        v55 = [v74 descriptor];
        v56 = [v55 shape];
        v57 = [v56 objectAtIndexedSubscript:v53];
        v58 = [v57 unsignedIntegerValue];

        if (v54 != v58)
        {
          break;
        }

        ++v53;
        v59 = [v10 objectAtIndexedSubscript:0];
        v60 = [v59 descriptor];
        v61 = [v60 dimensionCount];

        if (v53 >= v61)
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
    v9 = v73;
    goto LABEL_25;
  }

  v37 = 1;
  while (1)
  {
    v38 = [(MLCSliceLayer *)v75 start];
    v39 = [v38 objectAtIndexedSubscript:v37];
    v40 = [v39 unsignedIntegerValue];
    v41 = [v10 objectAtIndexedSubscript:0];
    v42 = [v41 descriptor];
    v43 = [v42 shape];
    v44 = [v43 objectAtIndexedSubscript:v37];
    v45 = [v44 unsignedIntegerValue] - 1;

    if (v40 > v45)
    {
      break;
    }

    ++v37;
    v46 = [v10 objectAtIndexedSubscript:0];
    v47 = [v46 descriptor];
    v48 = [v47 dimensionCount];

    if (v37 >= v48)
    {
      goto LABEL_11;
    }
  }

  v66 = +[MLCLog framework];
  v9 = v73;
  v52 = v74;
  if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
  {
    [MLCSliceLayer compileForDevice:sourceTensors:resultTensor:];
  }

  v68 = 0;
LABEL_25:

  v70 = *MEMORY[0x277D85DE8];
  return v68;
}

- (unint64_t)resultSizeForDimension:(unint64_t)a3
{
  v5 = [(MLCSliceLayer *)self stride];
  v6 = [v5 objectAtIndexedSubscript:a3];
  v7 = [v6 integerValue];
  if (v7 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = -v7;
  }

  v9 = [(MLCSliceLayer *)self end];
  v10 = [v9 objectAtIndexedSubscript:a3];
  v11 = [v10 unsignedIntegerValue];
  v12 = [(MLCSliceLayer *)self start];
  v13 = [v12 objectAtIndexedSubscript:a3];
  v14 = (v11 + ~[v13 unsignedIntegerValue]) / v8;

  return v14 + 1;
}

- (id)resultTensorFromSources:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  for (i = 0; ; ++i)
  {
    v7 = [v4 objectAtIndexedSubscript:0];
    v8 = [v7 descriptor];
    v9 = [v8 shape];
    v10 = [v9 count];

    if (i >= v10)
    {
      break;
    }

    v11 = [(MLCSliceLayer *)self resultSizeForDimension:i];
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];
    [v5 setObject:v12 atIndexedSubscript:i];
  }

  v13 = [v5 copy];
  v14 = [v4 objectAtIndexedSubscript:0];
  v15 = [v14 descriptor];
  v16 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v13, [v15 dataType]);

  v17 = [MLCTensor tensorWithDescriptor:v16];

  return v17;
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
  v6 = [(MLCSliceLayer *)self start];
  v7 = [(MLCSliceLayer *)self end];
  v8 = [(MLCSliceLayer *)self stride];
  v9 = [v3 stringWithFormat:@"%@: { start=%@ : end=%@ : stride=%@ }", v5, v6, v7, v8];

  return v9;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCLayer *)self layerID];
  v7 = [(MLCSliceLayer *)self start];
  v8 = [(MLCSliceLayer *)self end];
  v9 = [(MLCSliceLayer *)self stride];
  v10 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Start: %@    End: %@<BR />Stride: %@</FONT>>", v5, v6, v7, v8, v9];

  return v10;
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