@interface MLCDropoutLayer
+ (MLCDropoutLayer)layerWithRate:(float)rate seed:(NSUInteger)seed;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (BOOL)isSupportedShapeForTensorSources:(id)sources;
- (MLCDropoutLayer)initWithRate:(float)rate seed:(unint64_t)seed;
- (id)description;
- (id)resultTensorFromSources:(id)sources;
- (id)summarizedDOTDescription;
@end

@implementation MLCDropoutLayer

+ (MLCDropoutLayer)layerWithRate:(float)rate seed:(NSUInteger)seed
{
  v6 = [self alloc];
  *&v7 = rate;
  v8 = [v6 initWithRate:seed seed:v7];

  return v8;
}

- (MLCDropoutLayer)initWithRate:(float)rate seed:(unint64_t)seed
{
  v7.receiver = self;
  v7.super_class = MLCDropoutLayer;
  result = [(MLCLayer *)&v7 initWithLabel:@"Dropout"];
  if (result)
  {
    result->_rate = rate;
    result->_seed = seed;
  }

  return result;
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v34 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v12 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor = [v12 descriptor];
  dataType = [descriptor dataType];

  if (![(MLCLayer *)MLCDropoutLayer supportsDataType:dataType onDevice:deviceCopy])
  {
    v20 = +[MLCLog framework];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      *buf = 138412802;
      v29 = v23;
      v30 = 1024;
      v31 = dataType;
      v32 = 2112;
      v33 = deviceCopy;
      _os_log_error_impl(&dword_238C1D000, v20, OS_LOG_TYPE_ERROR, "%@: dropout layer with data type = %d is not supported on a device = %@", buf, 0x1Cu);
    }

    goto LABEL_10;
  }

  computeEngine = [deviceCopy computeEngine];
  [(MLCDropoutLayer *)self rate];
  v17 = v16;
  seed = [(MLCDropoutLayer *)self seed];
  LODWORD(v19) = v17;
  v20 = [computeEngine dropoutLayerWithRate:seed seed:v19];

  if (!v20 || ![v20 count])
  {
    v24 = +[MLCLog framework];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [MLCPoolingLayer compileForDevice:a2 sourceTensors:v20 resultTensor:v24];
    }

LABEL_10:
    v22 = 0;
    goto LABEL_11;
  }

  computeEngine2 = [deviceCopy computeEngine];
  v22 = [computeEngine2 compileLayerDeviceOps:v20 sourceTensors:tensorsCopy resultTensor:tensorCopy];

  v27.receiver = self;
  v27.super_class = MLCDropoutLayer;
  [(MLCLayer *)&v27 bindDevice:deviceCopy deviceOps:v20];
LABEL_11:

  v25 = *MEMORY[0x277D85DE8];
  return v22;
}

- (id)resultTensorFromSources:(id)sources
{
  sourcesCopy = sources;
  v4 = [MEMORY[0x277CBEBF8] mutableCopy];
  for (i = 0; ; ++i)
  {
    v6 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor = [v6 descriptor];
    shape = [descriptor shape];
    v9 = [shape count];

    if (i >= v9)
    {
      break;
    }

    v10 = [sourcesCopy objectAtIndexedSubscript:0];
    descriptor2 = [v10 descriptor];
    shape2 = [descriptor2 shape];
    v13 = [shape2 objectAtIndexedSubscript:i];
    [v4 setObject:v13 atIndexedSubscript:i];
  }

  v14 = [v4 copy];
  v15 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor3 = [v15 descriptor];
  v17 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v14, [descriptor3 dataType]);

  v18 = [MLCTensor tensorWithDescriptor:v17];

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(MLCDropoutLayer *)self rate];
  v7 = v6;
  seed = [(MLCDropoutLayer *)self seed];
  conditionalTreeNode = [(MLCLayer *)self conditionalTreeNode];
  resultTensors = [(MLCLayer *)self resultTensors];
  v11 = [v3 stringWithFormat:@"%@: { rate=%f : seed=%lu : conditionalTreeNode=%@ : resultTensor=%@ }", v5, *&v7, seed, conditionalTreeNode, resultTensors];

  return v11;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  layerID = [(MLCLayer *)self layerID];
  [(MLCDropoutLayer *)self rate];
  v8 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Rate: %.03f    Seed: %lu</FONT>>", v5, layerID, v7, -[MLCDropoutLayer seed](self, "seed")];

  return v8;
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

@end