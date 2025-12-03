@interface MLCLossLayer
+ (MLCLossLayer)layerWithDescriptor:(MLCLossDescriptor *)lossDescriptor;
+ (MLCLossLayer)layerWithDescriptor:(MLCLossDescriptor *)lossDescriptor weights:(MLCTensor *)weights;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (MLCLossLayer)initWithDescriptor:(id)descriptor weights:(id)weights;
- (id)description;
- (id)resultTensorFromSources:(id)sources;
- (id)summarizedDOTDescription;
- (unint64_t)resultSizeFromSourceSize:(unint64_t)size dimension:(unint64_t)dimension;
- (void)linkAssociatedTensors;
- (void)unlinkAssociatedTensors;
@end

@implementation MLCLossLayer

+ (MLCLossLayer)layerWithDescriptor:(MLCLossDescriptor *)lossDescriptor
{
  v4 = lossDescriptor;
  v5 = [[self alloc] initWithDescriptor:v4 weights:0];

  return v5;
}

+ (MLCLossLayer)layerWithDescriptor:(MLCLossDescriptor *)lossDescriptor weights:(MLCTensor *)weights
{
  v6 = weights;
  v7 = lossDescriptor;
  v8 = [[self alloc] initWithDescriptor:v7 weights:v6];

  return v8;
}

- (MLCLossLayer)initWithDescriptor:(id)descriptor weights:(id)weights
{
  descriptorCopy = descriptor;
  weightsCopy = weights;
  if ([descriptorCopy lossType] == 7 && objc_msgSend(descriptorCopy, "reductionType") == 2)
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
    objc_storeStrong(&v11->_descriptor, descriptor);
    lossLabels = v12->_lossLabels;
    v12->_lossLabels = 0;

    objc_storeStrong(&v12->_weights, weights);
  }

  return v12;
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v59 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  if (tensorsCopy)
  {
    aSelector = a2;
    v12 = [tensorsCopy count];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      while (1)
      {
        v15 = [tensorsCopy objectAtIndexedSubscript:v14];
        descriptor = [v15 descriptor];
        dataType = [descriptor dataType];

        if (![(MLCLayer *)MLCLossLayer supportsDataType:dataType onDevice:deviceCopy])
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
        v56 = dataType;
        v57 = 2112;
        v58 = deviceCopy;
        _os_log_error_impl(&dword_238C1D000, v35, OS_LOG_TYPE_ERROR, "%@: sourceTensor[%lu] uses unsupported data type = %d on a device = %@", buf, 0x26u);
      }

      goto LABEL_29;
    }

LABEL_6:
    v18 = [tensorsCopy objectAtIndexedSubscript:0];
    descriptor2 = [v18 descriptor];
    shape = [descriptor2 shape];
    v21 = [shape count];

    if ([tensorsCopy count])
    {
      v22 = 0;
      while (1)
      {
        v23 = [tensorsCopy objectAtIndexedSubscript:v22];
        descriptor3 = [v23 descriptor];
        shape2 = [descriptor3 shape];
        v26 = [shape2 count];

        if (v21 != v26)
        {
          break;
        }

        if (++v22 >= [tensorsCopy count])
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
    lossLabels = [(MLCLossLayer *)self lossLabels];
    if (!lossLabels)
    {
      goto LABEL_12;
    }

    v28 = lossLabels;
    lossLabels2 = [(MLCLossLayer *)self lossLabels];
    descriptor4 = [lossLabels2 descriptor];
    shape3 = [descriptor4 shape];
    v32 = [shape3 count];

    if (v21 == v32)
    {
LABEL_12:
      computeEngine = [deviceCopy computeEngine];
      descriptor5 = [(MLCLossLayer *)self descriptor];
      v35 = [computeEngine lossLayerWithDescriptor:descriptor5];

      if (v35 && [v35 count])
      {
        computeEngine2 = [deviceCopy computeEngine];
        v37 = [computeEngine2 compileLayerDeviceOps:v35 sourceTensors:tensorsCopy resultTensor:tensorCopy];

        if (v37)
        {
          v50.receiver = self;
          v50.super_class = MLCLossLayer;
          [(MLCLayer *)&v50 bindDevice:deviceCopy deviceOps:v35];
          computeEngine3 = [deviceCopy computeEngine];
          deviceList = [computeEngine3 deviceList];
          v40 = [deviceList count];

          if (v40 >= 2)
          {
            descriptor6 = [(MLCLossLayer *)self descriptor];
            [tensorCopy setMultiDeviceReductionType:{objc_msgSend(descriptor6, "reductionType")}];
          }

          weights = [(MLCLossLayer *)self weights];

          if (!weights)
          {
            v45 = 1;
            goto LABEL_30;
          }

          weights2 = [(MLCLossLayer *)self weights];
          [weights2 allocateDeviceMemory:deviceCopy];

          weights3 = [(MLCLossLayer *)self weights];
          [weights3 writeTensorDataToAllDevices:deviceCopy];
          v45 = 1;
          goto LABEL_34;
        }

        weights3 = +[MLCLog framework];
        if (os_log_type_enabled(weights3, OS_LOG_TYPE_ERROR))
        {
          [MLCLossLayer compileForDevice:? sourceTensors:? resultTensor:?];
        }
      }

      else
      {
        weights3 = +[MLCLog framework];
        if (os_log_type_enabled(weights3, OS_LOG_TYPE_ERROR))
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

- (unint64_t)resultSizeFromSourceSize:(unint64_t)size dimension:(unint64_t)dimension
{
  v13.receiver = self;
  v13.super_class = MLCLossLayer;
  v6 = [(MLCLayer *)&v13 resultSizeFromSourceSize:size dimension:?];
  descriptor = [(MLCLossLayer *)self descriptor];
  reductionType = [descriptor reductionType];

  if (!reductionType)
  {
    if (dimension != 1)
    {
      return v6;
    }

    descriptor2 = [(MLCLossLayer *)self descriptor];
    if ([descriptor2 lossType] == 2)
    {
    }

    else
    {
      descriptor3 = [(MLCLossLayer *)self descriptor];
      lossType = [descriptor3 lossType];

      if (lossType != 4)
      {
        return v6;
      }
    }
  }

  return 1;
}

- (id)resultTensorFromSources:(id)sources
{
  sourcesCopy = sources;
  v5 = [MEMORY[0x277CBEBF8] mutableCopy];
  v6 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor = [v6 descriptor];
  shape = [descriptor shape];
  v9 = [shape objectAtIndexedSubscript:0];
  v10 = -[MLCLossLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v9 unsignedIntegerValue], 0);

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10];
  [v5 setObject:v11 atIndexedSubscript:0];

  v12 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor2 = [v12 descriptor];
  shape2 = [descriptor2 shape];
  v15 = [shape2 count];

  v16 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor3 = [v16 descriptor];
  shape3 = [descriptor3 shape];
  v19 = shape3;
  if (v15 == 2)
  {
    v20 = 1;
    v21 = [shape3 objectAtIndexedSubscript:1];
    v22 = -[MLCLossLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v21 unsignedIntegerValue], 1);
  }

  else
  {
    v23 = [shape3 count];

    v24 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor4 = [v24 descriptor];
    shape4 = [descriptor4 shape];
    v27 = shape4;
    if (v23 == 3)
    {
      v28 = [shape4 objectAtIndexedSubscript:1];
      v29 = -[MLCLossLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v28 unsignedIntegerValue], 1);

      v30 = [sourcesCopy objectAtIndexedSubscript:0];
      descriptor5 = [v30 descriptor];
      shape5 = [descriptor5 shape];
      v20 = 2;
      v33 = [shape5 objectAtIndexedSubscript:2];
      v22 = -[MLCLossLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v33 unsignedIntegerValue], 2);

      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v29];
      v34 = v5;
      v35 = v16;
      v36 = 1;
    }

    else
    {
      v37 = [shape4 count];

      if (v37 != 4)
      {
        goto LABEL_9;
      }

      v38 = [sourcesCopy objectAtIndexedSubscript:0];
      descriptor6 = [v38 descriptor];
      shape6 = [descriptor6 shape];
      v41 = [shape6 objectAtIndexedSubscript:1];
      v59 = -[MLCLossLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v41 unsignedIntegerValue], 1);

      v42 = [sourcesCopy objectAtIndexedSubscript:0];
      descriptor7 = [v42 descriptor];
      shape7 = [descriptor7 shape];
      v45 = [shape7 objectAtIndexedSubscript:2];
      v46 = -[MLCLossLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v45 unsignedIntegerValue], 2);

      v47 = [sourcesCopy objectAtIndexedSubscript:0];
      descriptor8 = [v47 descriptor];
      shape8 = [descriptor8 shape];
      v20 = 3;
      v50 = [shape8 objectAtIndexedSubscript:3];
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
  v54 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor9 = [v54 descriptor];
  v56 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v53, [descriptor9 dataType]);

  v57 = [MLCTensor tensorWithDescriptor:v56];

  return v57;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  descriptor = [(MLCLossLayer *)self descriptor];
  resultTensors = [(MLCLayer *)self resultTensors];
  v8 = [v3 stringWithFormat:@"%@: { lossDescriptor=%@ : resultTensor=%@ }", v5, descriptor, resultTensors];

  return v8;
}

- (id)summarizedDOTDescription
{
  v24 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  layerID = [(MLCLayer *)self layerID];
  descriptor = [(MLCLossLayer *)self descriptor];
  v5 = MLCLossTypeDebugDescription([descriptor lossType]);
  descriptor2 = [(MLCLossLayer *)self descriptor];
  v7 = MLCReductionTypeDebugDescription([descriptor2 reductionType]);
  descriptor3 = [(MLCLossLayer *)self descriptor];
  [descriptor3 weight];
  v10 = v9;
  descriptor4 = [(MLCLossLayer *)self descriptor];
  [descriptor4 labelSmoothing];
  v13 = v12;
  descriptor5 = [(MLCLossLayer *)self descriptor];
  classCount = [descriptor5 classCount];
  descriptor6 = [(MLCLossLayer *)self descriptor];
  [descriptor6 epsilon];
  v18 = v17;
  descriptor7 = [(MLCLossLayer *)self descriptor];
  [descriptor7 delta];
  v21 = [v24 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Loss Type: %@         Reduction Type: %@    Weight: %.03f\n<BR />Label Smoothing: %.03f    Class Count: %lu       Epsilon: %.03f<BR />Delta: %.03f</FONT>>", v4, layerID, v5, v7, *&v10, *&v13, classCount, *&v18, v20];

  return v21;
}

- (void)linkAssociatedTensors
{
  lossLabels = [(MLCLossLayer *)self lossLabels];

  if (lossLabels)
  {
    lossLabels2 = [(MLCLossLayer *)self lossLabels];
    childLayers = [lossLabels2 childLayers];
    [childLayers addObject:self];
  }
}

- (void)unlinkAssociatedTensors
{
  lossLabels = [(MLCLossLayer *)self lossLabels];

  if (lossLabels)
  {
    lossLabels2 = [(MLCLossLayer *)self lossLabels];
    childLayers = [lossLabels2 childLayers];
    [childLayers removeObject:self];
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