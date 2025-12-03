@interface MLCUpsampleLayer
+ (MLCUpsampleLayer)layerWithShape:(NSArray *)shape;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (MLCUpsampleLayer)initWithShape:(id)shape sampleMode:(int)mode alignCorners:(BOOL)corners;
- (id)description;
- (id)summarizedDOTDescription;
- (unint64_t)resultSizeFromSourceSize:(unint64_t)size dimension:(unint64_t)dimension;
@end

@implementation MLCUpsampleLayer

+ (MLCUpsampleLayer)layerWithShape:(NSArray *)shape
{
  v4 = shape;
  v5 = [[self alloc] initWithShape:v4 sampleMode:0 alignCorners:0];

  return v5;
}

- (MLCUpsampleLayer)initWithShape:(id)shape sampleMode:(int)mode alignCorners:(BOOL)corners
{
  shapeCopy = shape;
  v15.receiver = self;
  v15.super_class = MLCUpsampleLayer;
  v10 = [(MLCLayer *)&v15 initWithLabel:@"Upsampling"];
  if (v10)
  {
    if ([shapeCopy count] == 1)
    {
      v11 = 0;
      v10->_upsampleHeight = 1;
    }

    else
    {
      v12 = [shapeCopy objectAtIndexedSubscript:0];
      v10->_upsampleHeight = [v12 unsignedIntegerValue];

      v11 = 1;
    }

    v13 = [shapeCopy objectAtIndexedSubscript:v11];
    v10->_upsampleWidth = [v13 unsignedIntegerValue];

    v10->_sampleMode = mode;
    v10->_alignsCorners = corners;
    objc_storeStrong(&v10->_shape, shape);
  }

  return v10;
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v62 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v12 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v12 descriptor];
  dataType = [descriptor dataType];

  if (![(MLCLayer *)MLCUpsampleLayer supportsDataType:dataType onDevice:deviceCopy])
  {
    v26 = +[MLCLog framework];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = NSStringFromSelector(a2);
      *buf = 138412802;
      v59 = v27;
      v60 = 1024;
      *v61 = dataType;
      *&v61[4] = 2112;
      *&v61[6] = deviceCopy;
      _os_log_error_impl(&dword_238C1D000, v26, OS_LOG_TYPE_ERROR, "%@: upsample layer with data type = %d is not supported on a device = %@", buf, 0x1Cu);
    }

    goto LABEL_29;
  }

  v15 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor2 = [v15 descriptor];
  shape = [descriptor2 shape];
  v18 = [shape count];

  if (v18 == 2)
  {
    aSelector = a2;
    unsignedIntegerValue3 = 1;
    unsignedIntegerValue4 = 1;
    v40 = 1;
    unsignedIntegerValue2 = 1;
  }

  else
  {
    if (v18 == 4)
    {
      aSelector = a2;
      v28 = [tensorsCopy objectAtIndexedSubscript:0];
      descriptor3 = [v28 descriptor];
      shape2 = [descriptor3 shape];
      v31 = [shape2 objectAtIndexedSubscript:2];
      unsignedIntegerValue = [v31 unsignedIntegerValue];

      v32 = [tensorsCopy objectAtIndexedSubscript:0];
      descriptor4 = [v32 descriptor];
      shape3 = [descriptor4 shape];
      v22 = 3;
      v35 = [shape3 objectAtIndexedSubscript:3];
      unsignedIntegerValue2 = [v35 unsignedIntegerValue];

      descriptor5 = [tensorCopy descriptor];
      shape4 = [descriptor5 shape];
      v20Shape = [shape4 objectAtIndexedSubscript:2];
      unsignedIntegerValue3 = [v20Shape unsignedIntegerValue];
    }

    else
    {
      if (v18 != 3)
      {
        v26 = +[MLCLog framework];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [MLCPaddingLayer compileForDevice:a2 sourceTensors:tensorsCopy resultTensor:?];
        }

        goto LABEL_29;
      }

      aSelector = a2;
      descriptor5 = [tensorsCopy objectAtIndexedSubscript:0];
      shape4 = [descriptor5 descriptor];
      v20Shape = [shape4 shape];
      v22 = 2;
      v23 = [v20Shape objectAtIndexedSubscript:2];
      unsignedIntegerValue2 = [v23 unsignedIntegerValue];

      unsignedIntegerValue3 = 1;
      unsignedIntegerValue = 1;
    }

    descriptor6 = [tensorCopy descriptor];
    shape5 = [descriptor6 shape];
    v38 = [shape5 objectAtIndexedSubscript:v22];
    unsignedIntegerValue4 = [v38 unsignedIntegerValue];

    v40 = unsignedIntegerValue;
  }

  if (unsignedIntegerValue4 != [(MLCUpsampleLayer *)self upsampleWidth])
  {
    v26 = +[MLCLog framework];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v50 = NSStringFromSelector(aSelectora);
      *buf = 138412802;
      v59 = v50;
      v60 = 2048;
      *v61 = unsignedIntegerValue4;
      *&v61[8] = 2048;
      *&v61[10] = [(MLCUpsampleLayer *)self upsampleWidth];
      v51 = "%@: resultTensor width=%lu does not match value specified in shape=%lu";
LABEL_25:
      _os_log_error_impl(&dword_238C1D000, v26, OS_LOG_TYPE_ERROR, v51, buf, 0x20u);
LABEL_28:
    }

LABEL_29:
    v49 = 0;
    goto LABEL_30;
  }

  if (unsignedIntegerValue3 != [(MLCUpsampleLayer *)self upsampleHeight])
  {
    v26 = +[MLCLog framework];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v50 = NSStringFromSelector(aSelectora);
      *buf = 138412802;
      v59 = v50;
      v60 = 2048;
      *v61 = unsignedIntegerValue3;
      *&v61[8] = 2048;
      *&v61[10] = [(MLCUpsampleLayer *)self upsampleHeight];
      v51 = "%@: resultTensor height=%lu does not match value specified in shape=%lu";
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  v41 = unsignedIntegerValue4 / unsignedIntegerValue2;
  v42 = unsignedIntegerValue3 / v40;
  if ([(MLCUpsampleLayer *)self sampleMode]== MLCSampleModeLinear && [(MLCUpsampleLayer *)self alignsCorners])
  {
    v41 = (unsignedIntegerValue4 - 1) / (unsignedIntegerValue2 - 1);
    v42 = (unsignedIntegerValue3 - 1) / (v40 - 1);
  }

  computeEngine = [deviceCopy computeEngine];
  sampleMode = [(MLCUpsampleLayer *)self sampleMode];
  alignsCorners = [(MLCUpsampleLayer *)self alignsCorners];
  *&v46 = v41;
  *&v47 = v42;
  v26 = [computeEngine upsampleLayerWithScaleFactorX:sampleMode scaleFactorY:alignsCorners sampleMode:v46 alignCorners:v47];

  if (!v26 || ![v26 count])
  {
    v50 = +[MLCLog framework];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      [MLCPaddingLayer compileForDevice:? sourceTensors:? resultTensor:?];
    }

    goto LABEL_28;
  }

  computeEngine2 = [deviceCopy computeEngine];
  v49 = [computeEngine2 compileLayerDeviceOps:v26 sourceTensors:tensorsCopy resultTensor:tensorCopy];

  v57.receiver = self;
  v57.super_class = MLCUpsampleLayer;
  [(MLCLayer *)&v57 bindDevice:deviceCopy deviceOps:v26];
LABEL_30:

  v52 = *MEMORY[0x277D85DE8];
  return v49;
}

- (unint64_t)resultSizeFromSourceSize:(unint64_t)size dimension:(unint64_t)dimension
{
  v7.receiver = self;
  v7.super_class = MLCUpsampleLayer;
  result = [(MLCLayer *)&v7 resultSizeFromSourceSize:size dimension:?];
  if (dimension == 2)
  {
    return [(MLCUpsampleLayer *)self upsampleHeight];
  }

  if (dimension == 3)
  {
    return [(MLCUpsampleLayer *)self upsampleWidth];
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  shape = [(MLCUpsampleLayer *)self shape];
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
  shape = [(MLCUpsampleLayer *)self shape];
  v8 = MLCSampleModeDebugDescription([(MLCUpsampleLayer *)self sampleMode]);
  v9 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Shape: %@<BR />Sample Mode: %@    Align Corners: %hhd</FONT>>", v5, layerID, shape, v8, -[MLCUpsampleLayer alignsCorners](self, "alignsCorners")];

  return v9;
}

@end