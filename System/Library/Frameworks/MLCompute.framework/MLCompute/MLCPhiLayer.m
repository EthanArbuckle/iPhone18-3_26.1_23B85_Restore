@interface MLCPhiLayer
+ (id)layerWithControlTreeNode:(id)a3 sources:(id)a4 resultTensor:(id)a5;
- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5;
- (MLCPhiLayer)initWithControlTreeNode:(id)a3 sources:(id)a4 resultTensor:(id)a5;
- (id)description;
- (unint64_t)resultSizeFromSourceSize:(unint64_t)a3 dimension:(unint64_t)a4;
@end

@implementation MLCPhiLayer

+ (id)layerWithControlTreeNode:(id)a3 sources:(id)a4 resultTensor:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithControlTreeNode:v10 sources:v9 resultTensor:v8];

  return v11;
}

- (MLCPhiLayer)initWithControlTreeNode:(id)a3 sources:(id)a4 resultTensor:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([v10 count] == 2)
  {
    v39 = a2;
    v40 = self;
    v41 = v9;
    v12 = [v11 descriptor];
    v13 = [v12 shape];
    v14 = [v13 count];

    v42 = [v10 count];
    if (v42)
    {
      v15 = 0;
      v43 = v10;
      v44 = v11;
      while (1)
      {
        v16 = [v10 objectAtIndexedSubscript:v15];
        v17 = [v16 descriptor];
        v18 = [v17 shape];
        v19 = [v18 count];

        if (v14 != v19)
        {
          v38 = +[MLCLog framework];
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            [MLCPhiLayer initWithControlTreeNode:v39 sources:? resultTensor:?];
          }

          v34 = 0;
          self = v40;
          v9 = v41;
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
        v22 = [v11 descriptor];
        v23 = [v22 shape];
        v24 = [v23 objectAtIndexedSubscript:v20];
        v25 = v15;
        v26 = [v10 objectAtIndexedSubscript:v15];
        v27 = [v26 descriptor];
        v28 = [v27 shape];
        v29 = [v28 objectAtIndexedSubscript:v20];

        if (v24 != v29)
        {
          break;
        }

        ++v20;
        v14 = v21;
        v10 = v43;
        v11 = v44;
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

      v34 = 0;
      self = v40;
      v9 = v41;
      v10 = v43;
      v11 = v44;
    }

    else
    {
LABEL_10:
      v48.receiver = v40;
      v48.super_class = MLCPhiLayer;
      v30 = [(MLCLayer *)&v48 initWithLabel:@"Phi"];
      v31 = v30;
      v9 = v41;
      if (v30)
      {
        v47.receiver = v30;
        v47.super_class = MLCPhiLayer;
        v32 = [(MLCLayer *)&v47 sourceTensors];
        [v32 addObjectsFromArray:v10];

        v46.receiver = v31;
        v46.super_class = MLCPhiLayer;
        v33 = [(MLCLayer *)&v46 resultTensors];
        [v33 addObject:v11];

        v45.receiver = v31;
        v45.super_class = MLCPhiLayer;
        [(MLCLayer *)&v45 setConditionalTreeNode:v41];
      }

      self = v31;
      v34 = self;
    }
  }

  else
  {
    v35 = +[MLCLog framework];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [MLCPhiLayer initWithControlTreeNode:a2 sources:? resultTensor:?];
    }

    v34 = 0;
  }

LABEL_19:

  return v34;
}

- (BOOL)compileForDevice:(id)a3 sourceTensors:(id)a4 resultTensor:(id)a5
{
  v6.receiver = self;
  v6.super_class = MLCPhiLayer;
  [(MLCLayer *)&v6 bindDevice:a3 deviceOps:0, a5];
  return 1;
}

- (unint64_t)resultSizeFromSourceSize:(unint64_t)a3 dimension:(unint64_t)a4
{
  v5 = [MLCLog framework:a3];
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
  v16 = [(MLCLayer *)self sourceTensors];
  v5 = [v16 objectAtIndexedSubscript:0];
  v6 = [v5 label];
  v7 = [(MLCLayer *)self sourceTensors];
  v8 = [v7 objectAtIndexedSubscript:1];
  v9 = [v8 label];
  v10 = [(MLCLayer *)self conditionalTreeNode];
  v11 = [(MLCLayer *)self resultTensors];
  v12 = [v11 objectAtIndexedSubscript:0];
  v13 = [v15 stringWithFormat:@"%@: { sources = [%@, %@] : predicate = %@ : result = %@ }", v4, v6, v9, v10, v12];

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