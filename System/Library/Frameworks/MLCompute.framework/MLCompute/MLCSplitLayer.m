@interface MLCSplitLayer
+ (MLCSplitLayer)layerWithSplitCount:(NSUInteger)splitCount dimension:(NSUInteger)dimension;
+ (MLCSplitLayer)layerWithSplitSectionLengths:(NSArray *)splitSectionLengths dimension:(NSUInteger)dimension;
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensors:(id)a5;
- (BOOL)isSupportedShapeForTensorSources:(id)a3;
- (MLCSplitLayer)initWithSplitCount:(unint64_t)a3 splitSectionLengths:(id)a4 dimension:(unint64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)summarizedDOTDescription;
- (unint64_t)deviceMemorySizeWithOptimizer:(id)a3 device:(id)a4;
@end

@implementation MLCSplitLayer

+ (MLCSplitLayer)layerWithSplitCount:(NSUInteger)splitCount dimension:(NSUInteger)dimension
{
  v4 = [[a1 alloc] initWithSplitCount:splitCount splitSectionLengths:0 dimension:dimension];

  return v4;
}

+ (MLCSplitLayer)layerWithSplitSectionLengths:(NSArray *)splitSectionLengths dimension:(NSUInteger)dimension
{
  v6 = splitSectionLengths;
  v7 = [[a1 alloc] initWithSplitCount:-[NSArray count](v6 splitSectionLengths:"count") dimension:{v6, dimension}];

  return v7;
}

- (MLCSplitLayer)initWithSplitCount:(unint64_t)a3 splitSectionLengths:(id)a4 dimension:(unint64_t)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MLCSplitLayer;
  v9 = [(MLCLayer *)&v14 initWithLabel:@"Split"];
  v10 = v9;
  if (v9)
  {
    v9->_dimension = a5;
    v9->_splitCount = a3;
    if (v8)
    {
      v11 = [v8 copy];
    }

    else
    {
      v11 = 0;
    }

    splitSectionLengths = v10->_splitSectionLengths;
    v10->_splitSectionLengths = v11;
  }

  return v10;
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensors:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCSplitLayer compileForDevice:a2 sourceTensors:? resultTensors:?];
    }

    goto LABEL_16;
  }

  if ([v10 count] != 1)
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCSplitLayer compileForDevice:a2 sourceTensors:? resultTensors:?];
    }

    goto LABEL_16;
  }

  v12 = [v9 computeEngine];
  v13 = objc_opt_respondsToSelector();

  if ((v13 & 1) == 0)
  {
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  v14 = [v9 computeEngine];
  v15 = [v14 splitLayerWithDimension:{-[MLCSplitLayer dimension](self, "dimension")}];

  if (!v15 || ![v15 count])
  {
    v18 = +[MLCLog framework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MLCSplitLayer compileForDevice:a2 sourceTensors:? resultTensors:?];
    }

LABEL_16:
    v17 = 0;
    goto LABEL_17;
  }

  v16 = [v9 computeEngine];
  v17 = [v16 compileLayerDeviceOps:v15 sourceTensors:v10 resultTensors:v11];

LABEL_12:
  v20.receiver = self;
  v20.super_class = MLCSplitLayer;
  [(MLCLayer *)&v20 bindDevice:v9 deviceOps:v15];
LABEL_17:

  return v17;
}

- (unint64_t)deviceMemorySizeWithOptimizer:(id)a3 device:(id)a4
{
  v5 = a4;
  v6 = [(MLCLayer *)self resultTensors];
  v7 = [v6 count];

  if (v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = [v5 computeEngine];
      v11 = [(MLCLayer *)self resultTensors];
      v12 = [v11 objectAtIndexedSubscript:v8];
      v9 += [v10 deviceMemorySizeForTensor:v12];

      ++v8;
      v13 = [(MLCLayer *)self resultTensors];
      v14 = [v13 count];
    }

    while (v8 < v14);
  }

  else
  {
    v9 = 0;
  }

  if (![(MLCLayer *)self isTrainable])
  {
    goto LABEL_18;
  }

  v15 = [(MLCLayer *)self intermediateGradientTensors];
  v16 = [v15 count];

  if (v16)
  {
    v17 = [(MLCLayer *)self intermediateGradientTensors];
    v18 = [v17 count];

    if (v18)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = [v5 computeEngine];
        v22 = [(MLCLayer *)self intermediateGradientTensors];
        v23 = [v22 objectAtIndexedSubscript:v19];
        v20 += [v21 deviceMemorySizeForTensor:v23];

        ++v19;
        v24 = [(MLCLayer *)self intermediateGradientTensors];
        v25 = [v24 count];
      }

      while (v19 < v25);
      goto LABEL_19;
    }

LABEL_18:
    v20 = 0;
    goto LABEL_19;
  }

  v26 = [(MLCLayer *)self sourceGradientTensors];
  v27 = [v26 count];

  if (!v27)
  {
    goto LABEL_18;
  }

  v28 = 0;
  v20 = 0;
  do
  {
    v29 = [(MLCLayer *)self sourceGradientTensors];
    v30 = [v29 objectAtIndexedSubscript:v28];
    v31 = [v30 sharedMemoryTensor];

    if (!v31)
    {
      v32 = [v5 computeEngine];
      v33 = [(MLCLayer *)self sourceGradientTensors];
      v34 = [v33 objectAtIndexedSubscript:v28];
      v20 += [v32 deviceMemorySizeForTensor:v34];
    }

    ++v28;
    v35 = [(MLCLayer *)self sourceGradientTensors];
    v36 = [v35 count];
  }

  while (v28 < v36);
LABEL_19:

  return v20 + v9;
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCSplitLayer *)self dimension];
  v7 = [(MLCSplitLayer *)self splitCount];
  v8 = [(MLCSplitLayer *)self splitSectionLengths];
  v9 = [(MLCLayer *)self conditionalTreeNode];
  v10 = [(MLCLayer *)self resultTensors];
  v11 = [v3 stringWithFormat:@"%@: { dimension=%lu : splitCount=%lu : splitSectionLengths=%@ : conditionalTreeNode=%@ : resultTensor=%@ }", v5, v6, v7, v8, v9, v10];

  return v11;
}

- (id)summarizedDOTDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ (%lu)<BR /><FONT POINT-SIZE=10>Dimension: %lu    Split Count: %lu</FONT>>", v5, -[MLCLayer layerID](self, "layerID"), -[MLCSplitLayer dimension](self, "dimension"), -[MLCSplitLayer splitCount](self, "splitCount")];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MLCSplitLayer *)self splitCount];
  v6 = [(MLCSplitLayer *)self splitSectionLengths];
  v7 = [v4 initWithSplitCount:v5 splitSectionLengths:v6 dimension:{-[MLCSplitLayer dimension](self, "dimension")}];

  return v7;
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensors:.cold.1(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensors:.cold.2(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)compileForDevice:(const char *)a1 sourceTensors:resultTensors:.cold.3(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end