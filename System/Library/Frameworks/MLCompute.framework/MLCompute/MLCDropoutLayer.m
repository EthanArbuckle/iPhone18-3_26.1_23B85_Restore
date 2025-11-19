@interface MLCDropoutLayer
+ (MLCDropoutLayer)layerWithRate:(float)rate seed:(NSUInteger)seed;
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (BOOL)isSupportedShapeForTensorSources:(id)a3;
- (MLCDropoutLayer)initWithRate:(float)a3 seed:(unint64_t)a4;
- (id)description;
- (id)resultTensorFromSources:(id)a3;
- (id)summarizedDOTDescription;
@end

@implementation MLCDropoutLayer

+ (MLCDropoutLayer)layerWithRate:(float)rate seed:(NSUInteger)seed
{
  v6 = [a1 alloc];
  *&v7 = rate;
  v8 = [v6 initWithRate:seed seed:v7];

  return v8;
}

- (MLCDropoutLayer)initWithRate:(float)a3 seed:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = MLCDropoutLayer;
  result = [(MLCLayer *)&v7 initWithLabel:@"Dropout"];
  if (result)
  {
    result->_rate = a3;
    result->_seed = a4;
  }

  return result;
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 objectAtIndexedSubscript:0];
  v13 = [v12 descriptor];
  v14 = [v13 dataType];

  if (![(MLCLayer *)MLCDropoutLayer supportsDataType:v14 onDevice:v9])
  {
    v20 = +[MLCLog framework];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      *buf = 138412802;
      v29 = v23;
      v30 = 1024;
      v31 = v14;
      v32 = 2112;
      v33 = v9;
      _os_log_error_impl(&dword_238C1D000, v20, OS_LOG_TYPE_ERROR, "%@: dropout layer with data type = %d is not supported on a device = %@", buf, 0x1Cu);
    }

    goto LABEL_10;
  }

  v15 = [v9 computeEngine];
  [(MLCDropoutLayer *)self rate];
  v17 = v16;
  v18 = [(MLCDropoutLayer *)self seed];
  LODWORD(v19) = v17;
  v20 = [v15 dropoutLayerWithRate:v18 seed:v19];

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

  v21 = [v9 computeEngine];
  v22 = [v21 compileLayerDeviceOps:v20 sourceTensors:v10 resultTensor:v11];

  v27.receiver = self;
  v27.super_class = MLCDropoutLayer;
  [(MLCLayer *)&v27 bindDevice:v9 deviceOps:v20];
LABEL_11:

  v25 = *MEMORY[0x277D85DE8];
  return v22;
}

- (id)resultTensorFromSources:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEBF8] mutableCopy];
  for (i = 0; ; ++i)
  {
    v6 = [v3 objectAtIndexedSubscript:0];
    v7 = [v6 descriptor];
    v8 = [v7 shape];
    v9 = [v8 count];

    if (i >= v9)
    {
      break;
    }

    v10 = [v3 objectAtIndexedSubscript:0];
    v11 = [v10 descriptor];
    v12 = [v11 shape];
    v13 = [v12 objectAtIndexedSubscript:i];
    [v4 setObject:v13 atIndexedSubscript:i];
  }

  v14 = [v4 copy];
  v15 = [v3 objectAtIndexedSubscript:0];
  v16 = [v15 descriptor];
  v17 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v14, [v16 dataType]);

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
  v8 = [(MLCDropoutLayer *)self seed];
  v9 = [(MLCLayer *)self conditionalTreeNode];
  v10 = [(MLCLayer *)self resultTensors];
  v11 = [v3 stringWithFormat:@"%@: { rate=%f : seed=%lu : conditionalTreeNode=%@ : resultTensor=%@ }", v5, *&v7, v8, v9, v10];

  return v11;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCLayer *)self layerID];
  [(MLCDropoutLayer *)self rate];
  v8 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Rate: %.03f    Seed: %lu</FONT>>", v5, v6, v7, -[MLCDropoutLayer seed](self, "seed")];

  return v8;
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

@end