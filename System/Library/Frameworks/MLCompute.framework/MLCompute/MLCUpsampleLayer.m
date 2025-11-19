@interface MLCUpsampleLayer
+ (MLCUpsampleLayer)layerWithShape:(NSArray *)shape;
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (MLCUpsampleLayer)initWithShape:(id)a3 sampleMode:(int)a4 alignCorners:(BOOL)a5;
- (id)description;
- (id)summarizedDOTDescription;
- (unint64_t)resultSizeFromSourceSize:(unint64_t)a3 dimension:(unint64_t)a4;
@end

@implementation MLCUpsampleLayer

+ (MLCUpsampleLayer)layerWithShape:(NSArray *)shape
{
  v4 = shape;
  v5 = [[a1 alloc] initWithShape:v4 sampleMode:0 alignCorners:0];

  return v5;
}

- (MLCUpsampleLayer)initWithShape:(id)a3 sampleMode:(int)a4 alignCorners:(BOOL)a5
{
  v9 = a3;
  v15.receiver = self;
  v15.super_class = MLCUpsampleLayer;
  v10 = [(MLCLayer *)&v15 initWithLabel:@"Upsampling"];
  if (v10)
  {
    if ([v9 count] == 1)
    {
      v11 = 0;
      v10->_upsampleHeight = 1;
    }

    else
    {
      v12 = [v9 objectAtIndexedSubscript:0];
      v10->_upsampleHeight = [v12 unsignedIntegerValue];

      v11 = 1;
    }

    v13 = [v9 objectAtIndexedSubscript:v11];
    v10->_upsampleWidth = [v13 unsignedIntegerValue];

    v10->_sampleMode = a4;
    v10->_alignsCorners = a5;
    objc_storeStrong(&v10->_shape, a3);
  }

  return v10;
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v62 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 objectAtIndexedSubscript:0];
  v13 = [v12 descriptor];
  v14 = [v13 dataType];

  if (![(MLCLayer *)MLCUpsampleLayer supportsDataType:v14 onDevice:v9])
  {
    v26 = +[MLCLog framework];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = NSStringFromSelector(a2);
      *buf = 138412802;
      v59 = v27;
      v60 = 1024;
      *v61 = v14;
      *&v61[4] = 2112;
      *&v61[6] = v9;
      _os_log_error_impl(&dword_238C1D000, v26, OS_LOG_TYPE_ERROR, "%@: upsample layer with data type = %d is not supported on a device = %@", buf, 0x1Cu);
    }

    goto LABEL_29;
  }

  v15 = [v10 objectAtIndexedSubscript:0];
  v16 = [v15 descriptor];
  v17 = [v16 shape];
  v18 = [v17 count];

  if (v18 == 2)
  {
    aSelector = a2;
    v25 = 1;
    v39 = 1;
    v40 = 1;
    v24 = 1;
  }

  else
  {
    if (v18 == 4)
    {
      aSelector = a2;
      v28 = [v10 objectAtIndexedSubscript:0];
      v29 = [v28 descriptor];
      v30 = [v29 shape];
      v31 = [v30 objectAtIndexedSubscript:2];
      v56 = [v31 unsignedIntegerValue];

      v32 = [v10 objectAtIndexedSubscript:0];
      v33 = [v32 descriptor];
      v34 = [v33 shape];
      v22 = 3;
      v35 = [v34 objectAtIndexedSubscript:3];
      v24 = [v35 unsignedIntegerValue];

      v19 = [v11 descriptor];
      v20 = [v19 shape];
      v21 = [v20 objectAtIndexedSubscript:2];
      v25 = [v21 unsignedIntegerValue];
    }

    else
    {
      if (v18 != 3)
      {
        v26 = +[MLCLog framework];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [MLCPaddingLayer compileForDevice:a2 sourceTensors:v10 resultTensor:?];
        }

        goto LABEL_29;
      }

      aSelector = a2;
      v19 = [v10 objectAtIndexedSubscript:0];
      v20 = [v19 descriptor];
      v21 = [v20 shape];
      v22 = 2;
      v23 = [v21 objectAtIndexedSubscript:2];
      v24 = [v23 unsignedIntegerValue];

      v25 = 1;
      v56 = 1;
    }

    v36 = [v11 descriptor];
    v37 = [v36 shape];
    v38 = [v37 objectAtIndexedSubscript:v22];
    v39 = [v38 unsignedIntegerValue];

    v40 = v56;
  }

  if (v39 != [(MLCUpsampleLayer *)self upsampleWidth])
  {
    v26 = +[MLCLog framework];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v50 = NSStringFromSelector(aSelectora);
      *buf = 138412802;
      v59 = v50;
      v60 = 2048;
      *v61 = v39;
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

  if (v25 != [(MLCUpsampleLayer *)self upsampleHeight])
  {
    v26 = +[MLCLog framework];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v50 = NSStringFromSelector(aSelectora);
      *buf = 138412802;
      v59 = v50;
      v60 = 2048;
      *v61 = v25;
      *&v61[8] = 2048;
      *&v61[10] = [(MLCUpsampleLayer *)self upsampleHeight];
      v51 = "%@: resultTensor height=%lu does not match value specified in shape=%lu";
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  v41 = v39 / v24;
  v42 = v25 / v40;
  if ([(MLCUpsampleLayer *)self sampleMode]== MLCSampleModeLinear && [(MLCUpsampleLayer *)self alignsCorners])
  {
    v41 = (v39 - 1) / (v24 - 1);
    v42 = (v25 - 1) / (v40 - 1);
  }

  v43 = [v9 computeEngine];
  v44 = [(MLCUpsampleLayer *)self sampleMode];
  v45 = [(MLCUpsampleLayer *)self alignsCorners];
  *&v46 = v41;
  *&v47 = v42;
  v26 = [v43 upsampleLayerWithScaleFactorX:v44 scaleFactorY:v45 sampleMode:v46 alignCorners:v47];

  if (!v26 || ![v26 count])
  {
    v50 = +[MLCLog framework];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      [MLCPaddingLayer compileForDevice:? sourceTensors:? resultTensor:?];
    }

    goto LABEL_28;
  }

  v48 = [v9 computeEngine];
  v49 = [v48 compileLayerDeviceOps:v26 sourceTensors:v10 resultTensor:v11];

  v57.receiver = self;
  v57.super_class = MLCUpsampleLayer;
  [(MLCLayer *)&v57 bindDevice:v9 deviceOps:v26];
LABEL_30:

  v52 = *MEMORY[0x277D85DE8];
  return v49;
}

- (unint64_t)resultSizeFromSourceSize:(unint64_t)a3 dimension:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = MLCUpsampleLayer;
  result = [(MLCLayer *)&v7 resultSizeFromSourceSize:a3 dimension:?];
  if (a4 == 2)
  {
    return [(MLCUpsampleLayer *)self upsampleHeight];
  }

  if (a4 == 3)
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
  v6 = [(MLCUpsampleLayer *)self shape];
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
  v7 = [(MLCUpsampleLayer *)self shape];
  v8 = MLCSampleModeDebugDescription([(MLCUpsampleLayer *)self sampleMode]);
  v9 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Shape: %@<BR />Sample Mode: %@    Align Corners: %hhd</FONT>>", v5, v6, v7, v8, -[MLCUpsampleLayer alignsCorners](self, "alignsCorners")];

  return v9;
}

@end