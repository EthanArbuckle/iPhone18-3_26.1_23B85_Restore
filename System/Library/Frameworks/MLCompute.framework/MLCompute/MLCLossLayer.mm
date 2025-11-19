@interface MLCLossLayer
+ (MLCLossLayer)layerWithDescriptor:(MLCLossDescriptor *)lossDescriptor;
+ (MLCLossLayer)layerWithDescriptor:(MLCLossDescriptor *)lossDescriptor weights:(MLCTensor *)weights;
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (MLCLossLayer)initWithDescriptor:(id)a3 weights:(id)a4;
- (id)description;
- (id)resultTensorFromSources:(id)a3;
- (id)summarizedDOTDescription;
- (unint64_t)resultSizeFromSourceSize:(unint64_t)a3 dimension:(unint64_t)a4;
- (void)linkAssociatedTensors;
- (void)unlinkAssociatedTensors;
@end

@implementation MLCLossLayer

+ (MLCLossLayer)layerWithDescriptor:(MLCLossDescriptor *)lossDescriptor
{
  v4 = lossDescriptor;
  v5 = [[a1 alloc] initWithDescriptor:v4 weights:0];

  return v5;
}

+ (MLCLossLayer)layerWithDescriptor:(MLCLossDescriptor *)lossDescriptor weights:(MLCTensor *)weights
{
  v6 = weights;
  v7 = lossDescriptor;
  v8 = [[a1 alloc] initWithDescriptor:v7 weights:v6];

  return v8;
}

- (MLCLossLayer)initWithDescriptor:(id)a3 weights:(id)a4
{
  v8 = a3;
  v9 = a4;
  if ([v8 lossType] == 7 && objc_msgSend(v8, "reductionType") == 2)
  {
    v10 = +[MLCLog framework];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MLCLossLayer cosineDistanceLossWithReductionType:a2 weight:?];
    }
  }

  v15.receiver = self;
  v15.super_class = MLCLossLayer;
  v11 = [(MLCLayer *)&v15 initWithLabel:@"Loss"];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_descriptor, a3);
    lossLabels = v12->_lossLabels;
    v12->_lossLabels = 0;

    objc_storeStrong(&v12->_weights, a4);
  }

  return v12;
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v59 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10)
  {
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

        if (![(MLCLayer *)MLCLossLayer supportsDataType:v17 onDevice:v9])
        {
          break;
        }

        if (v13 == ++v14)
        {
          goto LABEL_6;
        }
      }

      v35 = +[MLCLog framework];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v46 = NSStringFromSelector(a2);
        *buf = 138413058;
        v52 = v46;
        v53 = 2048;
        v54 = v14;
        v55 = 1024;
        v56 = v17;
        v57 = 2112;
        v58 = v9;
        _os_log_error_impl(&dword_238C1D000, v35, OS_LOG_TYPE_ERROR, "%@: sourceTensor[%lu] uses unsupported data type = %d on a device = %@", buf, 0x26u);
      }

      goto LABEL_29;
    }

LABEL_6:
    v18 = [v10 objectAtIndexedSubscript:0];
    v19 = [v18 descriptor];
    v20 = [v19 shape];
    v21 = [v20 count];

    if ([v10 count])
    {
      v22 = 0;
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
          goto LABEL_10;
        }
      }

      v35 = +[MLCLog framework];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [MLCLossLayer compileForDevice:sourceTensors:resultTensor:];
      }

      goto LABEL_29;
    }

LABEL_10:
    v27 = [(MLCLossLayer *)self lossLabels];
    if (!v27)
    {
      goto LABEL_12;
    }

    v28 = v27;
    v29 = [(MLCLossLayer *)self lossLabels];
    v30 = [v29 descriptor];
    v31 = [v30 shape];
    v32 = [v31 count];

    if (v21 == v32)
    {
LABEL_12:
      v33 = [v9 computeEngine];
      v34 = [(MLCLossLayer *)self descriptor];
      v35 = [v33 lossLayerWithDescriptor:v34];

      if (v35 && [v35 count])
      {
        v36 = [v9 computeEngine];
        v37 = [v36 compileLayerDeviceOps:v35 sourceTensors:v10 resultTensor:v11];

        if (v37)
        {
          v50.receiver = self;
          v50.super_class = MLCLossLayer;
          [(MLCLayer *)&v50 bindDevice:v9 deviceOps:v35];
          v38 = [v9 computeEngine];
          v39 = [v38 deviceList];
          v40 = [v39 count];

          if (v40 >= 2)
          {
            v41 = [(MLCLossLayer *)self descriptor];
            [v11 setMultiDeviceReductionType:{objc_msgSend(v41, "reductionType")}];
          }

          v42 = [(MLCLossLayer *)self weights];

          if (!v42)
          {
            v45 = 1;
            goto LABEL_30;
          }

          v43 = [(MLCLossLayer *)self weights];
          [v43 allocateDeviceMemory:v9];

          v44 = [(MLCLossLayer *)self weights];
          [v44 writeTensorDataToAllDevices:v9];
          v45 = 1;
          goto LABEL_34;
        }

        v44 = +[MLCLog framework];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [MLCLossLayer compileForDevice:? sourceTensors:? resultTensor:?];
        }
      }

      else
      {
        v44 = +[MLCLog framework];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          [MLCLossLayer compileForDevice:sourceTensors:resultTensor:];
        }
      }

      v45 = 0;
LABEL_34:

      goto LABEL_30;
    }

    v35 = +[MLCLog framework];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [MLCLossLayer compileForDevice:sourceTensors:resultTensor:];
    }
  }

  else
  {
    v35 = +[MLCLog framework];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [MLCLossLayer compileForDevice:sourceTensors:resultTensor:];
    }
  }

LABEL_29:
  v45 = 0;
LABEL_30:

  v47 = *MEMORY[0x277D85DE8];
  return v45;
}

- (unint64_t)resultSizeFromSourceSize:(unint64_t)a3 dimension:(unint64_t)a4
{
  v13.receiver = self;
  v13.super_class = MLCLossLayer;
  v6 = [(MLCLayer *)&v13 resultSizeFromSourceSize:a3 dimension:?];
  v7 = [(MLCLossLayer *)self descriptor];
  v8 = [v7 reductionType];

  if (!v8)
  {
    if (a4 != 1)
    {
      return v6;
    }

    v10 = [(MLCLossLayer *)self descriptor];
    if ([v10 lossType] == 2)
    {
    }

    else
    {
      v11 = [(MLCLossLayer *)self descriptor];
      v12 = [v11 lossType];

      if (v12 != 4)
      {
        return v6;
      }
    }
  }

  return 1;
}

- (id)resultTensorFromSources:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  v6 = [v4 objectAtIndexedSubscript:0];
  v7 = [v6 descriptor];
  v8 = [v7 shape];
  v9 = [v8 objectAtIndexedSubscript:0];
  v10 = -[MLCLossLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v9 unsignedIntegerValue], 0);

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
  [v5 setObject:v11 atIndexedSubscript:0];

  v12 = [v4 objectAtIndexedSubscript:0];
  v13 = [v12 descriptor];
  v14 = [v13 shape];
  v15 = [v14 count];

  v16 = [v4 objectAtIndexedSubscript:0];
  v17 = [v16 descriptor];
  v18 = [v17 shape];
  v19 = v18;
  if (v15 == 2)
  {
    v20 = 1;
    v21 = [v18 objectAtIndexedSubscript:1];
    v22 = -[MLCLossLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v21 unsignedIntegerValue], 1);
  }

  else
  {
    v23 = [v18 count];

    v24 = [v4 objectAtIndexedSubscript:0];
    v25 = [v24 descriptor];
    v26 = [v25 shape];
    v27 = v26;
    if (v23 == 3)
    {
      v28 = [v26 objectAtIndexedSubscript:1];
      v29 = -[MLCLossLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v28 unsignedIntegerValue], 1);

      v30 = [v4 objectAtIndexedSubscript:0];
      v31 = [v30 descriptor];
      v32 = [v31 shape];
      v20 = 2;
      v33 = [v32 objectAtIndexedSubscript:2];
      v22 = -[MLCLossLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v33 unsignedIntegerValue], 2);

      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
      v34 = v5;
      v35 = v16;
      v36 = 1;
    }

    else
    {
      v37 = [v26 count];

      if (v37 != 4)
      {
        goto LABEL_9;
      }

      v38 = [v4 objectAtIndexedSubscript:0];
      v39 = [v38 descriptor];
      v40 = [v39 shape];
      v41 = [v40 objectAtIndexedSubscript:1];
      v59 = -[MLCLossLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v41 unsignedIntegerValue], 1);

      v42 = [v4 objectAtIndexedSubscript:0];
      v43 = [v42 descriptor];
      v44 = [v43 shape];
      v45 = [v44 objectAtIndexedSubscript:2];
      v46 = -[MLCLossLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v45 unsignedIntegerValue], 2);

      v47 = [v4 objectAtIndexedSubscript:0];
      v48 = [v47 descriptor];
      v49 = [v48 shape];
      v20 = 3;
      v50 = [v49 objectAtIndexedSubscript:3];
      v22 = -[MLCLossLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v50 unsignedIntegerValue], 3);

      v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v59];
      [v5 setObject:v51 atIndexedSubscript:1];

      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v46];
      v34 = v5;
      v35 = v16;
      v36 = 2;
    }

    [v34 setObject:v35 atIndexedSubscript:v36];
  }

  v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v22];
  [v5 setObject:v52 atIndexedSubscript:v20];

LABEL_9:
  v53 = [v5 copy];
  v54 = [v4 objectAtIndexedSubscript:0];
  v55 = [v54 descriptor];
  v56 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v53, [v55 dataType]);

  v57 = [MLCTensor tensorWithDescriptor:v56];

  return v57;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCLossLayer *)self descriptor];
  v7 = [(MLCLayer *)self resultTensors];
  v8 = [v3 stringWithFormat:@"%@: { lossDescriptor=%@ : resultTensor=%@ }", v5, v6, v7];

  return v8;
}

- (id)summarizedDOTDescription
{
  v24 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v23 = [(MLCLayer *)self layerID];
  v25 = [(MLCLossLayer *)self descriptor];
  v5 = MLCLossTypeDebugDescription([v25 lossType]);
  v6 = [(MLCLossLayer *)self descriptor];
  v7 = MLCReductionTypeDebugDescription([v6 reductionType]);
  v8 = [(MLCLossLayer *)self descriptor];
  [v8 weight];
  v10 = v9;
  v11 = [(MLCLossLayer *)self descriptor];
  [v11 labelSmoothing];
  v13 = v12;
  v14 = [(MLCLossLayer *)self descriptor];
  v15 = [v14 classCount];
  v16 = [(MLCLossLayer *)self descriptor];
  [v16 epsilon];
  v18 = v17;
  v19 = [(MLCLossLayer *)self descriptor];
  [v19 delta];
  v21 = [v24 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Loss Type: %@         Reduction Type: %@    Weight: %.03f\n<BR />Label Smoothing: %.03f    Class Count: %lu       Epsilon: %.03f<BR />Delta: %.03f</FONT>>", v4, v23, v5, v7, *&v10, *&v13, v15, *&v18, v20];

  return v21;
}

- (void)linkAssociatedTensors
{
  v3 = [(MLCLossLayer *)self lossLabels];

  if (v3)
  {
    v5 = [(MLCLossLayer *)self lossLabels];
    v4 = [v5 childLayers];
    [v4 addObject:self];
  }
}

- (void)unlinkAssociatedTensors
{
  v3 = [(MLCLossLayer *)self lossLabels];

  if (v3)
  {
    v5 = [(MLCLossLayer *)self lossLabels];
    v4 = [v5 childLayers];
    [v4 removeObject:self];
  }
}

+ (void)cosineDistanceLossWithReductionType:(const char *)a1 weight:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:sourceTensors:resultTensor:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:sourceTensors:resultTensor:.cold.2()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensor:.cold.3(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:sourceTensors:resultTensor:.cold.4()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:sourceTensors:resultTensor:.cold.5()
{
  OUTLINED_FUNCTION_5_0();
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end