@interface MLCGramMatrixLayer
+ (MLCGramMatrixLayer)layerWithScale:(float)scale;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (MLCGramMatrixLayer)initWithScaleFactor:(float)factor;
- (id)description;
- (id)resultTensorFromSources:(id)sources;
- (id)summarizedDOTDescription;
- (unint64_t)resultSizeFromSourceSize:(unint64_t)size dimension:(unint64_t)dimension;
- (unint64_t)resultSizeFromSourceSizes:(id)sizes dimension:(unint64_t)dimension;
@end

@implementation MLCGramMatrixLayer

+ (MLCGramMatrixLayer)layerWithScale:(float)scale
{
  v4 = [self alloc];
  *&v5 = scale;
  v6 = [v4 initWithScaleFactor:v5];

  return v6;
}

- (MLCGramMatrixLayer)initWithScaleFactor:(float)factor
{
  v5.receiver = self;
  v5.super_class = MLCGramMatrixLayer;
  result = [(MLCLayer *)&v5 initWithLabel:@"GramMatrix"];
  if (result)
  {
    result->_scale = factor;
  }

  return result;
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v30 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v12 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v12 descriptor];
  dataType = [descriptor dataType];

  if (![(MLCLayer *)MLCGramMatrixLayer supportsDataType:dataType onDevice:deviceCopy])
  {
    v16 = +[MLCLog framework];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(a2);
      *buf = 138412802;
      v25 = v19;
      v26 = 1024;
      v27 = dataType;
      v28 = 2112;
      v29 = deviceCopy;
      _os_log_error_impl(&dword_238C1D000, v16, OS_LOG_TYPE_ERROR, "%@: GramMatrix layer with data type = %d is not supported on a device = %@", buf, 0x1Cu);
    }

    goto LABEL_10;
  }

  computeEngine = [deviceCopy computeEngine];
  [(MLCGramMatrixLayer *)self scale];
  v16 = [computeEngine gramMatrixLayerWithScaleFactor:?];

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

  computeEngine2 = [deviceCopy computeEngine];
  v18 = [computeEngine2 compileLayerDeviceOps:v16 sourceTensors:tensorsCopy resultTensor:tensorCopy];

  v23.receiver = self;
  v23.super_class = MLCGramMatrixLayer;
  [(MLCLayer *)&v23 bindDevice:deviceCopy deviceOps:v16];
LABEL_11:

  v21 = *MEMORY[0x277D85DE8];
  return v18;
}

- (unint64_t)resultSizeFromSourceSize:(unint64_t)size dimension:(unint64_t)dimension
{
  v5 = [MLCLog framework:size];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCGramMatrixLayer resultSizeFromSourceSize:a2 dimension:v5];
  }

  return 0;
}

- (unint64_t)resultSizeFromSourceSizes:(id)sizes dimension:(unint64_t)dimension
{
  sizesCopy = sizes;
  v6 = sizesCopy;
  if (dimension)
  {
    if ((dimension & 0xFFFFFFFFFFFFFFFDLL) != 1)
    {
      unsignedIntegerValue = dimension == 2;
      goto LABEL_7;
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = [sizesCopy objectAtIndexedSubscript:v7];
  unsignedIntegerValue = [v8 unsignedIntegerValue];

LABEL_7:
  return unsignedIntegerValue;
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

    v11 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor2 = [v11 descriptor];
    shape2 = [descriptor2 shape];
    v14 = [shape2 count];

    v15 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor3 = [v15 descriptor];
    shape3 = [descriptor3 shape];
    if (i == 2 && v14 == 3)
    {
      v19 = 3;
    }

    else
    {
      v19 = i;
    }

    v20 = [(MLCGramMatrixLayer *)self resultSizeFromSourceSizes:shape3 dimension:v19];

    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v20];
    [v5 setObject:v21 atIndexedSubscript:i];
  }

  v22 = [v5 copy];
  v23 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor4 = [v23 descriptor];
  v25 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v22, [descriptor4 dataType]);

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
  conditionalTreeNode = [(MLCLayer *)self conditionalTreeNode];
  resultTensors = [(MLCLayer *)self resultTensors];
  v10 = [v3 stringWithFormat:@"%@: { scale=%f : conditionalTreeNode=%@ : resultTensor=%@ }", v5, *&v7, conditionalTreeNode, resultTensors];

  return v10;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  layerID = [(MLCLayer *)self layerID];
  [(MLCGramMatrixLayer *)self scale];
  v8 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Scale: %.03f</FONT>>", v5, layerID, v7];

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