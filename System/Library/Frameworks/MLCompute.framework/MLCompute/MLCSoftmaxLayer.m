@interface MLCSoftmaxLayer
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (MLCSoftmaxLayer)initWithSoftmaxOperation:(int)a3 dimension:(unint64_t)a4;
- (id)description;
- (id)resultTensorFromSources:(id)a3;
- (id)summarizedDOTDescription;
@end

@implementation MLCSoftmaxLayer

- (MLCSoftmaxLayer)initWithSoftmaxOperation:(int)a3 dimension:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = MLCSoftmaxLayer;
  result = [(MLCLayer *)&v7 initWithLabel:@"Softmax"];
  if (result)
  {
    result->_operation = a3;
    result->_dimension = a4;
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
  v14 = [v13 shape];
  v15 = [v14 count];

  v16 = [v10 objectAtIndexedSubscript:0];
  v17 = [v16 descriptor];
  v18 = [v17 dataType];

  if (![(MLCLayer *)MLCSoftmaxLayer supportsDataType:v18 onDevice:v9])
  {
    v20 = +[MLCLog framework];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v23 = NSStringFromSelector(a2);
      *buf = 138412802;
      v29 = v23;
      v30 = 1024;
      v31 = v18;
      v32 = 2112;
      v33 = v9;
      _os_log_error_impl(&dword_238C1D000, v20, OS_LOG_TYPE_ERROR, "%@: softmax layer with data type = %d is not supported on a device = %@", buf, 0x1Cu);
    }

    goto LABEL_10;
  }

  v19 = [v9 computeEngine];
  v20 = [v19 softmaxLayerWithOperation:-[MLCSoftmaxLayer operation](self dimension:"operation") sourceShapeCount:{-[MLCSoftmaxLayer dimension](self, "dimension"), v15}];

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
  v27.super_class = MLCSoftmaxLayer;
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
  v6 = [(MLCSoftmaxLayer *)self operation];
  v7 = [(MLCLayer *)self conditionalTreeNode];
  v8 = [(MLCLayer *)self resultTensors];
  v9 = [v3 stringWithFormat:@"%@: { operation=%d : conditionalTreeNode=%@ : resultTensor=%@ }", v5, v6, v7, v8];

  return v9;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCLayer *)self layerID];
  v7 = MLCSoftmaxOperationDebugDescription([(MLCSoftmaxLayer *)self operation]);
  v8 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Operation: %@    Dimension: %lu</FONT>>", v5, v6, v7, -[MLCSoftmaxLayer dimension](self, "dimension")];

  return v8;
}

@end