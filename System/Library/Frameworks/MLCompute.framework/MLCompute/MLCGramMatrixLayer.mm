@interface MLCGramMatrixLayer
+ (MLCGramMatrixLayer)layerWithScale:(float)scale;
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (MLCGramMatrixLayer)initWithScaleFactor:(float)a3;
- (id)description;
- (id)resultTensorFromSources:(id)a3;
- (id)summarizedDOTDescription;
- (unint64_t)resultSizeFromSourceSize:(unint64_t)a3 dimension:(unint64_t)a4;
- (unint64_t)resultSizeFromSourceSizes:(id)a3 dimension:(unint64_t)a4;
@end

@implementation MLCGramMatrixLayer

+ (MLCGramMatrixLayer)layerWithScale:(float)scale
{
  v4 = [a1 alloc];
  *&v5 = scale;
  v6 = [v4 initWithScaleFactor:v5];

  return v6;
}

- (MLCGramMatrixLayer)initWithScaleFactor:(float)a3
{
  v5.receiver = self;
  v5.super_class = MLCGramMatrixLayer;
  result = [(MLCLayer *)&v5 initWithLabel:@"GramMatrix"];
  if (result)
  {
    result->_scale = a3;
  }

  return result;
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 objectAtIndexedSubscript:0];
  v13 = [v12 descriptor];
  v14 = [v13 dataType];

  if (![(MLCLayer *)MLCGramMatrixLayer supportsDataType:v14 onDevice:v9])
  {
    v16 = +[MLCLog framework];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(a2);
      *buf = 138412802;
      v25 = v19;
      v26 = 1024;
      v27 = v14;
      v28 = 2112;
      v29 = v9;
      _os_log_error_impl(&dword_238C1D000, v16, OS_LOG_TYPE_ERROR, "%@: GramMatrix layer with data type = %d is not supported on a device = %@", buf, 0x1Cu);
    }

    goto LABEL_10;
  }

  v15 = [v9 computeEngine];
  [(MLCGramMatrixLayer *)self scale];
  v16 = [v15 gramMatrixLayerWithScaleFactor:?];

  if (!v16 || ![v16 count])
  {
    v20 = +[MLCLog framework];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [MLCPoolingLayer compileForDevice:a2 sourceTensors:v16 resultTensor:v20];
    }

LABEL_10:
    v18 = 0;
    goto LABEL_11;
  }

  v17 = [v9 computeEngine];
  v18 = [v17 compileLayerDeviceOps:v16 sourceTensors:v10 resultTensor:v11];

  v23.receiver = self;
  v23.super_class = MLCGramMatrixLayer;
  [(MLCLayer *)&v23 bindDevice:v9 deviceOps:v16];
LABEL_11:

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (unint64_t)resultSizeFromSourceSize:(unint64_t)a3 dimension:(unint64_t)a4
{
  v5 = [MLCLog framework:a3];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCGramMatrixLayer resultSizeFromSourceSize:a2 dimension:v5];
  }

  return 0;
}

- (unint64_t)resultSizeFromSourceSizes:(id)a3 dimension:(unint64_t)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    if ((a4 & 0xFFFFFFFFFFFFFFFDLL) != 1)
    {
      v9 = a4 == 2;
      goto LABEL_7;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 objectAtIndexedSubscript:v7];
  v9 = [v8 unsignedIntegerValue];

LABEL_7:
  return v9;
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

    v11 = [v4 objectAtIndexedSubscript:0];
    v12 = [v11 descriptor];
    v13 = [v12 shape];
    v14 = [v13 count];

    v15 = [v4 objectAtIndexedSubscript:0];
    v16 = [v15 descriptor];
    v17 = [v16 shape];
    if (i == 2 && v14 == 3)
    {
      v19 = 3;
    }

    else
    {
      v19 = i;
    }

    v20 = [(MLCGramMatrixLayer *)self resultSizeFromSourceSizes:v17 dimension:v19];

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
    [v5 setObject:v21 atIndexedSubscript:i];
  }

  v22 = [v5 copy];
  v23 = [v4 objectAtIndexedSubscript:0];
  v24 = [v23 descriptor];
  v25 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v22, [v24 dataType]);

  v26 = [MLCTensor tensorWithDescriptor:v25];

  return v26;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(MLCGramMatrixLayer *)self scale];
  v7 = v6;
  v8 = [(MLCLayer *)self conditionalTreeNode];
  v9 = [(MLCLayer *)self resultTensors];
  v10 = [v3 stringWithFormat:@"%@: { scale=%f : conditionalTreeNode=%@ : resultTensor=%@ }", v5, *&v7, v8, v9];

  return v10;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCLayer *)self layerID];
  [(MLCGramMatrixLayer *)self scale];
  v8 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Scale: %.03f</FONT>>", v5, v6, v7];

  return v8;
}

- (void)resultSizeFromSourceSize:(const char *)a1 dimension:(NSObject *)a2 .cold.1(const char *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "%@: Please call resultSizeFromSourceSizes:dimension", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end