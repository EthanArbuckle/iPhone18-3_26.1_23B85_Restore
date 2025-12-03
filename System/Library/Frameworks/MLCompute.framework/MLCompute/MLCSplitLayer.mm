@interface MLCSplitLayer
+ (MLCSplitLayer)layerWithSplitCount:(NSUInteger)splitCount dimension:(NSUInteger)dimension;
+ (MLCSplitLayer)layerWithSplitSectionLengths:(NSArray *)splitSectionLengths dimension:(NSUInteger)dimension;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensors:(id)resultTensors;
- (BOOL)isSupportedShapeForTensorSources:(id)sources;
- (MLCSplitLayer)initWithSplitCount:(unint64_t)count splitSectionLengths:(id)lengths dimension:(unint64_t)dimension;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)summarizedDOTDescription;
- (unint64_t)deviceMemorySizeWithOptimizer:(id)optimizer device:(id)device;
@end

@implementation MLCSplitLayer

+ (MLCSplitLayer)layerWithSplitCount:(NSUInteger)splitCount dimension:(NSUInteger)dimension
{
  v4 = [[self alloc] initWithSplitCount:splitCount splitSectionLengths:0 dimension:dimension];

  return v4;
}

+ (MLCSplitLayer)layerWithSplitSectionLengths:(NSArray *)splitSectionLengths dimension:(NSUInteger)dimension
{
  v6 = splitSectionLengths;
  v7 = [[self alloc] initWithSplitCount:-[NSArray count](v6 splitSectionLengths:"count") dimension:{v6, dimension}];

  return v7;
}

- (MLCSplitLayer)initWithSplitCount:(unint64_t)count splitSectionLengths:(id)lengths dimension:(unint64_t)dimension
{
  lengthsCopy = lengths;
  v14.receiver = self;
  v14.super_class = MLCSplitLayer;
  v9 = [(MLCLayer *)&v14 initWithLabel:@"Split"];
  v10 = v9;
  if (v9)
  {
    v9->_dimension = dimension;
    v9->_splitCount = count;
    if (lengthsCopy)
    {
      v11 = [lengthsCopy copy];
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

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensors:(id)resultTensors
{
  deviceCopy = device;
  tensorsCopy = tensors;
  resultTensorsCopy = resultTensors;
  if (!tensorsCopy)
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCSplitLayer compileForDevice:a2 sourceTensors:? resultTensors:?];
    }

    goto LABEL_16;
  }

  if ([tensorsCopy count] != 1)
  {
    v15 = +[MLCLog framework];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [MLCSplitLayer compileForDevice:a2 sourceTensors:? resultTensors:?];
    }

    goto LABEL_16;
  }

  computeEngine = [deviceCopy computeEngine];
  v13 = objc_opt_respondsToSelector();

  if ((v13 & 1) == 0)
  {
    v15 = 0;
    v17 = 1;
    goto LABEL_12;
  }

  computeEngine2 = [deviceCopy computeEngine];
  v15 = [computeEngine2 splitLayerWithDimension:{-[MLCSplitLayer dimension](self, "dimension")}];

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

  computeEngine3 = [deviceCopy computeEngine];
  v17 = [computeEngine3 compileLayerDeviceOps:v15 sourceTensors:tensorsCopy resultTensors:resultTensorsCopy];

LABEL_12:
  v20.receiver = self;
  v20.super_class = MLCSplitLayer;
  [(MLCLayer *)&v20 bindDevice:deviceCopy deviceOps:v15];
LABEL_17:

  return v17;
}

- (unint64_t)deviceMemorySizeWithOptimizer:(id)optimizer device:(id)device
{
  deviceCopy = device;
  resultTensors = [(MLCLayer *)self resultTensors];
  v7 = [resultTensors count];

  if (v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      computeEngine = [deviceCopy computeEngine];
      resultTensors2 = [(MLCLayer *)self resultTensors];
      v12 = [resultTensors2 objectAtIndexedSubscript:v8];
      v9 += [computeEngine deviceMemorySizeForTensor:v12];

      ++v8;
      resultTensors3 = [(MLCLayer *)self resultTensors];
      v14 = [resultTensors3 count];
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

  intermediateGradientTensors = [(MLCLayer *)self intermediateGradientTensors];
  v16 = [intermediateGradientTensors count];

  if (v16)
  {
    intermediateGradientTensors2 = [(MLCLayer *)self intermediateGradientTensors];
    v18 = [intermediateGradientTensors2 count];

    if (v18)
    {
      v19 = 0;
      v20 = 0;
      do
      {
        computeEngine2 = [deviceCopy computeEngine];
        intermediateGradientTensors3 = [(MLCLayer *)self intermediateGradientTensors];
        v23 = [intermediateGradientTensors3 objectAtIndexedSubscript:v19];
        v20 += [computeEngine2 deviceMemorySizeForTensor:v23];

        ++v19;
        intermediateGradientTensors4 = [(MLCLayer *)self intermediateGradientTensors];
        v25 = [intermediateGradientTensors4 count];
      }

      while (v19 < v25);
      goto LABEL_19;
    }

LABEL_18:
    v20 = 0;
    goto LABEL_19;
  }

  sourceGradientTensors = [(MLCLayer *)self sourceGradientTensors];
  v27 = [sourceGradientTensors count];

  if (!v27)
  {
    goto LABEL_18;
  }

  v28 = 0;
  v20 = 0;
  do
  {
    sourceGradientTensors2 = [(MLCLayer *)self sourceGradientTensors];
    v30 = [sourceGradientTensors2 objectAtIndexedSubscript:v28];
    sharedMemoryTensor = [v30 sharedMemoryTensor];

    if (!sharedMemoryTensor)
    {
      computeEngine3 = [deviceCopy computeEngine];
      sourceGradientTensors3 = [(MLCLayer *)self sourceGradientTensors];
      v34 = [sourceGradientTensors3 objectAtIndexedSubscript:v28];
      v20 += [computeEngine3 deviceMemorySizeForTensor:v34];
    }

    ++v28;
    sourceGradientTensors4 = [(MLCLayer *)self sourceGradientTensors];
    v36 = [sourceGradientTensors4 count];
  }

  while (v28 < v36);
LABEL_19:

  return v20 + v9;
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  dimension = [(MLCSplitLayer *)self dimension];
  splitCount = [(MLCSplitLayer *)self splitCount];
  splitSectionLengths = [(MLCSplitLayer *)self splitSectionLengths];
  conditionalTreeNode = [(MLCLayer *)self conditionalTreeNode];
  resultTensors = [(MLCLayer *)self resultTensors];
  v11 = [v3 stringWithFormat:@"%@: { dimension=%lu : splitCount=%lu : splitSectionLengths=%@ : conditionalTreeNode=%@ : resultTensor=%@ }", v5, dimension, splitCount, splitSectionLengths, conditionalTreeNode, resultTensors];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  splitCount = [(MLCSplitLayer *)self splitCount];
  splitSectionLengths = [(MLCSplitLayer *)self splitSectionLengths];
  v7 = [v4 initWithSplitCount:splitCount splitSectionLengths:splitSectionLengths dimension:{-[MLCSplitLayer dimension](self, "dimension")}];

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