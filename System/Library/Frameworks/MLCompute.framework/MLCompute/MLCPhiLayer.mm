@interface MLCPhiLayer
+ (id)layerWithControlTreeNode:(id)node sources:(id)sources resultTensor:(id)tensor;
- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor;
- (MLCPhiLayer)initWithControlTreeNode:(id)node sources:(id)sources resultTensor:(id)tensor;
- (id)description;
- (unint64_t)resultSizeFromSourceSize:(unint64_t)size dimension:(unint64_t)dimension;
@end

@implementation MLCPhiLayer

+ (id)layerWithControlTreeNode:(id)node sources:(id)sources resultTensor:(id)tensor
{
  tensorCopy = tensor;
  sourcesCopy = sources;
  nodeCopy = node;
  v11 = [[self alloc] initWithControlTreeNode:nodeCopy sources:sourcesCopy resultTensor:tensorCopy];

  return v11;
}

- (MLCPhiLayer)initWithControlTreeNode:(id)node sources:(id)sources resultTensor:(id)tensor
{
  nodeCopy = node;
  sourcesCopy = sources;
  tensorCopy = tensor;
  if ([sourcesCopy count] == 2)
  {
    v39 = a2;
    selfCopy = self;
    v41 = nodeCopy;
    descriptor = [tensorCopy descriptor];
    shape = [descriptor shape];
    v14 = [shape count];

    v42 = [sourcesCopy count];
    if (v42)
    {
      v15 = 0;
      v43 = sourcesCopy;
      v44 = tensorCopy;
      while (1)
      {
        v16 = [sourcesCopy objectAtIndexedSubscript:v15];
        descriptor2 = [v16 descriptor];
        shape2 = [descriptor2 shape];
        v19 = [shape2 count];

        if (v14 != v19)
        {
          v38 = +[MLCLog framework];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            [MLCPhiLayer initWithControlTreeNode:v39 sources:? resultTensor:?];
          }

          selfCopy2 = 0;
          self = selfCopy;
          nodeCopy = v41;
          goto LABEL_19;
        }

        if (v14)
        {
          break;
        }

LABEL_9:
        if (++v15 == v42)
        {
          goto LABEL_10;
        }
      }

      v20 = 0;
      while (1)
      {
        v21 = v14;
        descriptor3 = [tensorCopy descriptor];
        shape3 = [descriptor3 shape];
        v24 = [shape3 objectAtIndexedSubscript:v20];
        v25 = v15;
        v26 = [sourcesCopy objectAtIndexedSubscript:v15];
        descriptor4 = [v26 descriptor];
        shape4 = [descriptor4 shape];
        v29 = [shape4 objectAtIndexedSubscript:v20];

        if (v24 != v29)
        {
          break;
        }

        ++v20;
        v14 = v21;
        sourcesCopy = v43;
        tensorCopy = v44;
        v15 = v25;
        if (v21 == v20)
        {
          goto LABEL_9;
        }
      }

      v36 = +[MLCLog framework];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [MLCPhiLayer initWithControlTreeNode:v39 sources:? resultTensor:?];
      }

      selfCopy2 = 0;
      self = selfCopy;
      nodeCopy = v41;
      sourcesCopy = v43;
      tensorCopy = v44;
    }

    else
    {
LABEL_10:
      v48.receiver = selfCopy;
      v48.super_class = MLCPhiLayer;
      v30 = [(MLCLayer *)&v48 initWithLabel:@"Phi"];
      v31 = v30;
      nodeCopy = v41;
      if (v30)
      {
        v47.receiver = v30;
        v47.super_class = MLCPhiLayer;
        sourceTensors = [(MLCLayer *)&v47 sourceTensors];
        [sourceTensors addObjectsFromArray:sourcesCopy];

        v46.receiver = v31;
        v46.super_class = MLCPhiLayer;
        resultTensors = [(MLCLayer *)&v46 resultTensors];
        [resultTensors addObject:tensorCopy];

        v45.receiver = v31;
        v45.super_class = MLCPhiLayer;
        [(MLCLayer *)&v45 setConditionalTreeNode:v41];
      }

      self = v31;
      selfCopy2 = self;
    }
  }

  else
  {
    v35 = +[MLCLog framework];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [MLCPhiLayer initWithControlTreeNode:a2 sources:? resultTensor:?];
    }

    selfCopy2 = 0;
  }

LABEL_19:

  return selfCopy2;
}

- (BOOL)compileForDevice:(id)device sourceTensors:(id)tensors resultTensor:(id)tensor
{
  v6.receiver = self;
  v6.super_class = MLCPhiLayer;
  [(MLCLayer *)&v6 bindDevice:device deviceOps:0, tensor];
  return 1;
}

- (unint64_t)resultSizeFromSourceSize:(unint64_t)size dimension:(unint64_t)dimension
{
  v5 = [MLCLog framework:size];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [MLCPhiLayer resultSizeFromSourceSize:a2 dimension:?];
  }

  return 0;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  sourceTensors = [(MLCLayer *)self sourceTensors];
  v5 = [sourceTensors objectAtIndexedSubscript:0];
  label = [v5 label];
  sourceTensors2 = [(MLCLayer *)self sourceTensors];
  v8 = [sourceTensors2 objectAtIndexedSubscript:1];
  label2 = [v8 label];
  conditionalTreeNode = [(MLCLayer *)self conditionalTreeNode];
  resultTensors = [(MLCLayer *)self resultTensors];
  v12 = [resultTensors objectAtIndexedSubscript:0];
  v13 = [v15 stringWithFormat:@"%@: { sources = [%@, %@] : predicate = %@ : result = %@ }", v4, label, label2, conditionalTreeNode, v12];

  return v13;
}

- (void)initWithControlTreeNode:(const char *)a1 sources:resultTensor:.cold.1(const char *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@: Two source tensors are expected in phi layer.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithControlTreeNode:(const char *)a1 sources:resultTensor:.cold.2(const char *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@: Result and source tensors have different shape.", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)resultSizeFromSourceSize:(const char *)a1 dimension:.cold.1(const char *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@: resultSizeFromSourceSize:dimension must not be used for phi layer", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end