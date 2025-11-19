@interface MLCControlTreeNode
- (MLCControlTreeNode)initWithTensor:(id)a3 needToNegate:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MLCControlTreeNode

- (MLCControlTreeNode)initWithTensor:(id)a3 needToNegate:(BOOL)a4
{
  v8 = a3;
  v28.receiver = self;
  v28.super_class = MLCControlTreeNode;
  v9 = [(MLCControlTreeNode *)&v28 init];
  v10 = [v8 descriptor];
  v11 = [v10 shape];
  v12 = [v11 count];

  if (v12)
  {
    v13 = 0;
    v14 = 1;
    do
    {
      v15 = [v8 descriptor];
      v16 = [v15 shape];
      v17 = [v16 objectAtIndexedSubscript:v13];
      v14 *= [v17 unsignedIntegerValue];

      ++v13;
      v18 = [v8 descriptor];
      v19 = [v18 shape];
      v20 = [v19 count];
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

  v21 = [v8 descriptor];
  v22 = [v21 dataType];

  if (v22 != 4)
  {
    v25 = +[MLCLog framework];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [MLCControlTreeNode initWithTensor:a2 needToNegate:?];
    }

    goto LABEL_13;
  }

  v23 = [v8 parentLayers];
  v24 = [v23 count];

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
    objc_storeStrong(&v9->_predicate, a3);
    v9->_needToNegate = a4;
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
  v6 = [(MLCControlTreeNode *)self predicate];
  v7 = [v6 label];
  v8 = [v3 stringWithFormat:@"%@: { predicate=%@ : needToNegate=%d }", v5, v7, -[MLCControlTreeNode needToNegate](self, "needToNegate")];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MLCControlTreeNode *)self predicate];
  v6 = [v4 initWithTensor:v5 needToNegate:{-[MLCControlTreeNode needToNegate](self, "needToNegate")}];

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