@interface MLCControlTreeNode
- (MLCControlTreeNode)initWithTensor:(id)tensor needToNegate:(BOOL)negate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MLCControlTreeNode

- (MLCControlTreeNode)initWithTensor:(id)tensor needToNegate:(BOOL)negate
{
  tensorCopy = tensor;
  v28.receiver = self;
  v28.super_class = MLCControlTreeNode;
  v9 = [(MLCControlTreeNode *)&v28 init];
  descriptor = [tensorCopy descriptor];
  shape = [descriptor shape];
  v12 = [shape count];

  if (v12)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      descriptor2 = [tensorCopy descriptor];
      shape2 = [descriptor2 shape];
      v17 = [shape2 objectAtIndexedSubscript:v13];
      v14 *= [v17 unsignedIntegerValue];

      ++v13;
      descriptor3 = [tensorCopy descriptor];
      shape3 = [descriptor3 shape];
      v20 = [shape3 count];
    }

    while (v13 < v20);
    if (v14 != 1)
    {
      v25 = +[MLCLog framework];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [MLCControlTreeNode initWithTensor:a2 needToNegate:?];
      }

      goto LABEL_13;
    }
  }

  descriptor4 = [tensorCopy descriptor];
  dataType = [descriptor4 dataType];

  if (dataType != 4)
  {
    v25 = +[MLCLog framework];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [MLCControlTreeNode initWithTensor:a2 needToNegate:?];
    }

    goto LABEL_13;
  }

  parentLayers = [tensorCopy parentLayers];
  v24 = [parentLayers count];

  if (v24)
  {
    v25 = +[MLCLog framework];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [MLCControlTreeNode initWithTensor:a2 needToNegate:?];
    }

LABEL_13:

    v26 = 0;
    goto LABEL_14;
  }

  if (v9)
  {
    objc_storeStrong(&v9->_predicate, tensor);
    v9->_needToNegate = negate;
  }

  v26 = v9;
LABEL_14:

  return v26;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  predicate = [(MLCControlTreeNode *)self predicate];
  label = [predicate label];
  v8 = [v3 stringWithFormat:@"%@: { predicate=%@ : needToNegate=%d }", v5, label, -[MLCControlTreeNode needToNegate](self, "needToNegate")];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  predicate = [(MLCControlTreeNode *)self predicate];
  v6 = [v4 initWithTensor:predicate needToNegate:{-[MLCControlTreeNode needToNegate](self, "needToNegate")}];

  return v6;
}

- (void)initWithTensor:(const char *)a1 needToNegate:.cold.1(const char *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@: A predicate tensor with a single element is expected ", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithTensor:(const char *)a1 needToNegate:.cold.2(const char *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@: A predicate tensor with BOOLean data type is expected", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithTensor:(const char *)a1 needToNegate:.cold.3(const char *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@: A predicate must be graph-invariant", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end