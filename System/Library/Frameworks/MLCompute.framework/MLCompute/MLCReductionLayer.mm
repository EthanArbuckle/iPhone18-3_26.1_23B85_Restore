@interface MLCReductionLayer
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (MLCReductionLayer)initWithReduceType:(int)type dimensions:(id)dimensions;
- (NSUInteger)dimension;
- (id)description;
- (id)resultTensorFromSources:(id)sources;
- (id)summarizedDOTDescription;
- (unint64_t)resultSizeFromSourceSize:(unint64_t)size dimension:(unint64_t)dimension;
@end

@implementation MLCReductionLayer

- (MLCReductionLayer)initWithReduceType:(int)type dimensions:(id)dimensions
{
  v25 = *MEMORY[0x277D85DE8];
  dimensionsCopy = dimensions;
  v8 = dimensionsCopy;
  if ((type - 5) >= 2)
  {
    if (!type)
    {
      goto LABEL_3;
    }
  }

  else if ([dimensionsCopy count] != 1)
  {
LABEL_3:
    v9 = +[MLCLog framework];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      *buf = 138412802;
      v20 = v17;
      v21 = 1024;
      typeCopy = type;
      v23 = 2112;
      v24 = v8;
      _os_log_error_impl(&dword_238C1D000, v9, OS_LOG_TYPE_ERROR, "%@: failure to create reduction layer with reduceType = %d, dimensions = %@", buf, 0x1Cu);
    }

    selfCopy = 0;
    goto LABEL_10;
  }

  v18.receiver = self;
  v18.super_class = MLCReductionLayer;
  v11 = [(MLCLayer *)&v18 initWithLabel:@"Reduction"];
  v12 = v11;
  if (v11)
  {
    v11->_reductionType = type;
    v13 = [v8 copy];
    dimensions = v12->_dimensions;
    v12->_dimensions = v13;
  }

  self = v12;
  selfCopy = self;
LABEL_10:

  v15 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  deviceCopy = device;
  tensorsCopy = tensors;
  tensorCopy = tensor;
  if ([(MLCReductionLayer *)self reductionType]== MLCReductionTypeAll || [(MLCReductionLayer *)self reductionType]== MLCReductionTypeAny)
  {
    if ([tensorsCopy count])
    {
      v12 = 0;
      do
      {
        v13 = [tensorsCopy objectAtIndexedSubscript:v12];
        descriptor = [v13 descriptor];
        dataType = [descriptor dataType];

        v16 = dataType != 4;
        if (dataType != 4)
        {
          break;
        }

        ++v12;
      }

      while (v12 < [tensorsCopy count]);
    }

    else
    {
      v16 = 0;
    }

    descriptor2 = [tensorCopy descriptor];
    dataType2 = [descriptor2 dataType];

    if (v16 || dataType2 != 4)
    {
      v25 = +[MLCLog framework];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [MLCReductionLayer compileForDevice:a2 sourceTensors:v25 resultTensor:?];
      }

      goto LABEL_19;
    }
  }

  v30 = a2;
  computeEngine = [deviceCopy computeEngine];
  reductionType = [(MLCReductionLayer *)self reductionType];
  dimensions = [(MLCReductionLayer *)self dimensions];
  v22 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor3 = [v22 descriptor];
  shape = [descriptor3 shape];
  v25 = [computeEngine reductionLayerWithReduceType:reductionType dimensions:dimensions sourceShapeCount:{objc_msgSend(shape, "count")}];

  if (!v25 || ![v25 count])
  {
    v28 = +[MLCLog framework];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [MLCPoolingLayer compileForDevice:v30 sourceTensors:v25 resultTensor:v28];
    }

LABEL_19:
    v27 = 0;
    goto LABEL_20;
  }

  computeEngine2 = [deviceCopy computeEngine];
  v27 = [computeEngine2 compileLayerDeviceOps:v25 sourceTensors:tensorsCopy resultTensor:tensorCopy];

  v31.receiver = self;
  v31.super_class = MLCReductionLayer;
  [(MLCLayer *)&v31 bindDevice:deviceCopy deviceOps:v25];
LABEL_20:

  return v27;
}

- (unint64_t)resultSizeFromSourceSize:(unint64_t)size dimension:(unint64_t)dimension
{
  dimensions = [(MLCReductionLayer *)self dimensions];
  v8 = [dimensions count];

  if (v8)
  {
    v9 = 0;
    while (1)
    {
      dimensions2 = [(MLCReductionLayer *)self dimensions];
      v11 = [dimensions2 objectAtIndexedSubscript:v9];
      unsignedIntegerValue = [v11 unsignedIntegerValue];

      if (unsignedIntegerValue == dimension)
      {
        break;
      }

      ++v9;
      dimensions3 = [(MLCReductionLayer *)self dimensions];
      v14 = [dimensions3 count];

      if (v9 >= v14)
      {
        return size;
      }
    }

    return 1;
  }

  return size;
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
    v14 = [shape2 objectAtIndexedSubscript:i];
    v15 = -[MLCReductionLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v14 unsignedIntegerValue], i);

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
    [v5 setObject:v16 atIndexedSubscript:i];
  }

  v17 = [v5 copy];
  v18 = [sourcesCopy objectAtIndexedSubscript:0];
  descriptor3 = [v18 descriptor];
  v20 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v17, [descriptor3 dataType]);

  v21 = [MLCTensor tensorWithDescriptor:v20];

  return v21;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  reductionType = [(MLCReductionLayer *)self reductionType];
  dimensions = [(MLCReductionLayer *)self dimensions];
  conditionalTreeNode = [(MLCLayer *)self conditionalTreeNode];
  resultTensors = [(MLCLayer *)self resultTensors];
  v10 = [v3 stringWithFormat:@"%@: { reduceType=%d : dimension=%@ : conditionalTreeNode=%@ : resultTensor=%@ }", v5, reductionType, dimensions, conditionalTreeNode, resultTensors];

  return v10;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  layerID = [(MLCLayer *)self layerID];
  v7 = MLCReductionTypeDebugDescription([(MLCReductionLayer *)self reductionType]);
  dimensions = [(MLCReductionLayer *)self dimensions];
  v9 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Reduction Type: %@    Dimension: %@</FONT>>", v5, layerID, v7, dimensions];

  return v9;
}

- (NSUInteger)dimension
{
  dimensions = [(MLCReductionLayer *)self dimensions];
  v3 = [dimensions objectAtIndexedSubscript:0];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)compileForDevice:(const char *)a1 sourceTensors:(NSObject *)a2 resultTensor:.cold.2(const char *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_238C1D000, a2, OS_LOG_TYPE_ERROR, "%@: Data type for reduction type must be BOOLean", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end