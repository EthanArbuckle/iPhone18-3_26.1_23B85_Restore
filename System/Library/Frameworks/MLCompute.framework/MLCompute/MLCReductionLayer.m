@interface MLCReductionLayer
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (MLCReductionLayer)initWithReduceType:(int)a3 dimensions:(id)a4;
- (NSUInteger)dimension;
- (id)description;
- (id)resultTensorFromSources:(id)a3;
- (id)summarizedDOTDescription;
- (unint64_t)resultSizeFromSourceSize:(unint64_t)a3 dimension:(unint64_t)a4;
@end

@implementation MLCReductionLayer

- (MLCReductionLayer)initWithReduceType:(int)a3 dimensions:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = v7;
  if ((a3 - 5) >= 2)
  {
    if (!a3)
    {
      goto LABEL_3;
    }
  }

  else if ([v7 count] != 1)
  {
LABEL_3:
    v9 = +[MLCLog framework];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      *buf = 138412802;
      v20 = v17;
      v21 = 1024;
      v22 = a3;
      v23 = 2112;
      v24 = v8;
      _os_log_error_impl(&dword_238C1D000, v9, OS_LOG_TYPE_ERROR, "%@: failure to create reduction layer with reduceType = %d, dimensions = %@", buf, 0x1Cu);
    }

    v10 = 0;
    goto LABEL_10;
  }

  v18.receiver = self;
  v18.super_class = MLCReductionLayer;
  v11 = [(MLCLayer *)&v18 initWithLabel:@"Reduction"];
  v12 = v11;
  if (v11)
  {
    v11->_reductionType = a3;
    v13 = [v8 copy];
    dimensions = v12->_dimensions;
    v12->_dimensions = v13;
  }

  self = v12;
  v10 = self;
LABEL_10:

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([(MLCReductionLayer *)self reductionType]== MLCReductionTypeAll || [(MLCReductionLayer *)self reductionType]== MLCReductionTypeAny)
  {
    if ([v10 count])
    {
      v12 = 0;
      do
      {
        v13 = [v10 objectAtIndexedSubscript:v12];
        v14 = [v13 descriptor];
        v15 = [v14 dataType];

        v16 = v15 != 4;
        if (v15 != 4)
        {
          break;
        }

        ++v12;
      }

      while (v12 < [v10 count]);
    }

    else
    {
      v16 = 0;
    }

    v17 = [v11 descriptor];
    v18 = [v17 dataType];

    if (v16 || v18 != 4)
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
  v19 = [v9 computeEngine];
  v20 = [(MLCReductionLayer *)self reductionType];
  v21 = [(MLCReductionLayer *)self dimensions];
  v22 = [v10 objectAtIndexedSubscript:0];
  v23 = [v22 descriptor];
  v24 = [v23 shape];
  v25 = [v19 reductionLayerWithReduceType:v20 dimensions:v21 sourceShapeCount:{objc_msgSend(v24, "count")}];

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

  v26 = [v9 computeEngine];
  v27 = [v26 compileLayerDeviceOps:v25 sourceTensors:v10 resultTensor:v11];

  v31.receiver = self;
  v31.super_class = MLCReductionLayer;
  [(MLCLayer *)&v31 bindDevice:v9 deviceOps:v25];
LABEL_20:

  return v27;
}

- (unint64_t)resultSizeFromSourceSize:(unint64_t)a3 dimension:(unint64_t)a4
{
  v7 = [(MLCReductionLayer *)self dimensions];
  v8 = [v7 count];

  if (v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = [(MLCReductionLayer *)self dimensions];
      v11 = [v10 objectAtIndexedSubscript:v9];
      v12 = [v11 unsignedIntegerValue];

      if (v12 == a4)
      {
        break;
      }

      ++v9;
      v13 = [(MLCReductionLayer *)self dimensions];
      v14 = [v13 count];

      if (v9 >= v14)
      {
        return a3;
      }
    }

    return 1;
  }

  return a3;
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
    v14 = [v13 objectAtIndexedSubscript:i];
    v15 = -[MLCReductionLayer resultSizeFromSourceSize:dimension:](self, "resultSizeFromSourceSize:dimension:", [v14 unsignedIntegerValue], i);

    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v15];
    [v5 setObject:v16 atIndexedSubscript:i];
  }

  v17 = [v5 copy];
  v18 = [v4 objectAtIndexedSubscript:0];
  v19 = [v18 descriptor];
  v20 = +[MLCTensorDescriptor descriptorWithShape:dataType:](MLCTensorDescriptor, "descriptorWithShape:dataType:", v17, [v19 dataType]);

  v21 = [MLCTensor tensorWithDescriptor:v20];

  return v21;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCReductionLayer *)self reductionType];
  v7 = [(MLCReductionLayer *)self dimensions];
  v8 = [(MLCLayer *)self conditionalTreeNode];
  v9 = [(MLCLayer *)self resultTensors];
  v10 = [v3 stringWithFormat:@"%@: { reduceType=%d : dimension=%@ : conditionalTreeNode=%@ : resultTensor=%@ }", v5, v6, v7, v8, v9];

  return v10;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCLayer *)self layerID];
  v7 = MLCReductionTypeDebugDescription([(MLCReductionLayer *)self reductionType]);
  v8 = [(MLCReductionLayer *)self dimensions];
  v9 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Reduction Type: %@    Dimension: %@</FONT>>", v5, v6, v7, v8];

  return v9;
}

- (NSUInteger)dimension
{
  v2 = [(MLCReductionLayer *)self dimensions];
  v3 = [v2 objectAtIndexedSubscript:0];
  v4 = [v3 unsignedIntegerValue];

  return v4;
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