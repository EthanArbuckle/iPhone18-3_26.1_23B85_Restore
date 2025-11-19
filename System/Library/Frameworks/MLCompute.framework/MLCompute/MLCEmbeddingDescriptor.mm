@interface MLCEmbeddingDescriptor
+ (MLCEmbeddingDescriptor)descriptorWithEmbeddingCount:(NSNumber *)embeddingCount embeddingDimension:(NSNumber *)embeddingDimension;
- (BOOL)isEqual:(id)a3;
- (MLCEmbeddingDescriptor)initWithEmbeddingCount:(id)a3 embeddingDimension:(id)a4 paddingIndex:(id)a5 maximumNorm:(id)a6 pNorm:(id)a7 scalesGradientByFrequency:(BOOL)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation MLCEmbeddingDescriptor

+ (MLCEmbeddingDescriptor)descriptorWithEmbeddingCount:(NSNumber *)embeddingCount embeddingDimension:(NSNumber *)embeddingDimension
{
  v6 = embeddingDimension;
  v7 = embeddingCount;
  v8 = [[a1 alloc] initWithEmbeddingCount:v7 embeddingDimension:v6 paddingIndex:0 maximumNorm:0 pNorm:0 scalesGradientByFrequency:0];

  return v8;
}

- (MLCEmbeddingDescriptor)initWithEmbeddingCount:(id)a3 embeddingDimension:(id)a4 paddingIndex:(id)a5 maximumNorm:(id)a6 pNorm:(id)a7 scalesGradientByFrequency:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if ([v14 integerValue] <= 0)
  {
    v20 = +[MLCLog framework];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [MLCEmbeddingDescriptor initWithEmbeddingCount:a2 embeddingDimension:? paddingIndex:? maximumNorm:? pNorm:? scalesGradientByFrequency:?];
    }

    goto LABEL_26;
  }

  if ([v15 integerValue] <= 0)
  {
    v20 = +[MLCLog framework];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [MLCEmbeddingDescriptor initWithEmbeddingCount:a2 embeddingDimension:? paddingIndex:? maximumNorm:? pNorm:? scalesGradientByFrequency:?];
    }

    goto LABEL_26;
  }

  if (v16)
  {
    if ([v16 integerValue] < 0 || (v19 = objc_msgSend(v16, "unsignedIntegerValue"), v19 > objc_msgSend(v14, "unsignedIntegerValue") - 1))
    {
      v20 = +[MLCLog framework];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [MLCEmbeddingDescriptor initWithEmbeddingCount:a2 embeddingDimension:? paddingIndex:? maximumNorm:? pNorm:? scalesGradientByFrequency:?];
      }

LABEL_26:

      v26 = 0;
      goto LABEL_27;
    }
  }

  if (v17)
  {
    [v17 floatValue];
    if (v21 <= 0.0)
    {
      v20 = +[MLCLog framework];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [MLCEmbeddingDescriptor initWithEmbeddingCount:a2 embeddingDimension:? paddingIndex:? maximumNorm:? pNorm:? scalesGradientByFrequency:?];
      }

      goto LABEL_26;
    }
  }

  if (v18)
  {
    [v18 floatValue];
    if (v22 <= 0.0)
    {
      v20 = +[MLCLog framework];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [MLCEmbeddingDescriptor initWithEmbeddingCount:a2 embeddingDimension:? paddingIndex:? maximumNorm:? pNorm:? scalesGradientByFrequency:?];
      }

      goto LABEL_26;
    }
  }

  v30.receiver = self;
  v30.super_class = MLCEmbeddingDescriptor;
  v23 = [(MLCEmbeddingDescriptor *)&v30 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_embeddingCount, a3);
    objc_storeStrong(&v24->_embeddingDimension, a4);
    objc_storeStrong(&v24->_paddingIndex, a5);
    objc_storeStrong(&v24->_maximumNorm, a6);
    if (v18)
    {
      v25 = v18;
    }

    else
    {
      v25 = &unk_284BA6268;
    }

    objc_storeStrong(&v24->_pNorm, v25);
    v24->_scalesGradientByFrequency = a8;
  }

  self = v24;
  v26 = self;
LABEL_27:

  return v26;
}

- (id)description
{
  v18 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(MLCEmbeddingDescriptor *)self embeddingCount];
  v6 = [v5 unsignedIntegerValue];
  v7 = [(MLCEmbeddingDescriptor *)self embeddingDimension];
  v8 = [v7 unsignedIntegerValue];
  v9 = [(MLCEmbeddingDescriptor *)self paddingIndex];
  v10 = [v9 unsignedIntegerValue];
  v11 = [(MLCEmbeddingDescriptor *)self maximumNorm];
  [v11 floatValue];
  v13 = v12;
  v14 = [(MLCEmbeddingDescriptor *)self pNorm];
  [v14 floatValue];
  v16 = [v18 stringWithFormat:@"%@: { embeddingCount=%lu : embeddingDimension=%lu : paddingIndex=%lu : maximumNorm=%f : pNorm=%f : scalesGradientByFrequency=%d }", v4, v6, v8, v10, *&v13, v15, -[MLCEmbeddingDescriptor scalesGradientByFrequency](self, "scalesGradientByFrequency")];

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 embeddingCount];
    v7 = [(MLCEmbeddingDescriptor *)self embeddingCount];
    if (v6 == v7)
    {
      v9 = [v5 embeddingDimension];
      v10 = [(MLCEmbeddingDescriptor *)self embeddingDimension];
      if (v9 == v10)
      {
        v11 = [v5 paddingIndex];
        v12 = [(MLCEmbeddingDescriptor *)self paddingIndex];
        if (v11 == v12)
        {
          v13 = [v5 maximumNorm];
          v14 = [(MLCEmbeddingDescriptor *)self maximumNorm];
          v23 = v13;
          if (v13 == v14)
          {
            v22 = v14;
            v15 = [v5 pNorm];
            v16 = [(MLCEmbeddingDescriptor *)self pNorm];
            v21 = v15;
            if (v15 == v16)
            {
              v17 = v16;
              v20 = [v5 scalesGradientByFrequency];
              v18 = v20 ^ [(MLCEmbeddingDescriptor *)self scalesGradientByFrequency];
              v16 = v17;
              v8 = v18 ^ 1;
            }

            else
            {
              v8 = 0;
            }

            v14 = v22;
          }

          else
          {
            v8 = 0;
          }
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v17 = 0;
  v3 = [(MLCEmbeddingDescriptor *)self embeddingCount];
  v16 = [v3 hash];
  v4 = [(MLCEmbeddingDescriptor *)self embeddingDimension];
  [v4 hash];
  v5 = [(MLCEmbeddingDescriptor *)self paddingIndex];
  [v5 hash];
  v6 = [(MLCEmbeddingDescriptor *)self maximumNorm];
  [v6 hash];
  v7 = [(MLCEmbeddingDescriptor *)self pNorm];
  [v7 hash];
  [(MLCEmbeddingDescriptor *)self scalesGradientByFrequency];
  hashCombine_6(&v17, v8, v9, v10, v11, v12, v13, v14, v16);

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MLCEmbeddingDescriptor *)self embeddingCount];
  v6 = [(MLCEmbeddingDescriptor *)self embeddingDimension];
  v7 = [(MLCEmbeddingDescriptor *)self paddingIndex];
  v8 = [(MLCEmbeddingDescriptor *)self maximumNorm];
  v9 = [(MLCEmbeddingDescriptor *)self pNorm];
  v10 = [v4 initWithEmbeddingCount:v5 embeddingDimension:v6 paddingIndex:v7 maximumNorm:v8 pNorm:v9 scalesGradientByFrequency:{-[MLCEmbeddingDescriptor scalesGradientByFrequency](self, "scalesGradientByFrequency")}];

  return v10;
}

- (void)initWithEmbeddingCount:(const char *)a1 embeddingDimension:paddingIndex:maximumNorm:pNorm:scalesGradientByFrequency:.cold.1(const char *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@: The padding index must be within the number of embeddings", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithEmbeddingCount:(const char *)a1 embeddingDimension:paddingIndex:maximumNorm:pNorm:scalesGradientByFrequency:.cold.2(const char *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@: The maximum norm must be greater than zero", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithEmbeddingCount:(const char *)a1 embeddingDimension:paddingIndex:maximumNorm:pNorm:scalesGradientByFrequency:.cold.3(const char *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@: The p in p-norm must be greater than zero", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithEmbeddingCount:(const char *)a1 embeddingDimension:paddingIndex:maximumNorm:pNorm:scalesGradientByFrequency:.cold.4(const char *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@: The embedding dimension must be greater than zero", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithEmbeddingCount:(const char *)a1 embeddingDimension:paddingIndex:maximumNorm:pNorm:scalesGradientByFrequency:.cold.5(const char *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@: The number of embeddings must be greater than zero", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end