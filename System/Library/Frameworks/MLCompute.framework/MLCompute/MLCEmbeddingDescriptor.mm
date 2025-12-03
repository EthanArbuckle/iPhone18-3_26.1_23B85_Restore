@interface MLCEmbeddingDescriptor
+ (MLCEmbeddingDescriptor)descriptorWithEmbeddingCount:(NSNumber *)embeddingCount embeddingDimension:(NSNumber *)embeddingDimension;
- (BOOL)isEqual:(id)equal;
- (MLCEmbeddingDescriptor)initWithEmbeddingCount:(id)count embeddingDimension:(id)dimension paddingIndex:(id)index maximumNorm:(id)norm pNorm:(id)pNorm scalesGradientByFrequency:(BOOL)frequency;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation MLCEmbeddingDescriptor

+ (MLCEmbeddingDescriptor)descriptorWithEmbeddingCount:(NSNumber *)embeddingCount embeddingDimension:(NSNumber *)embeddingDimension
{
  v6 = embeddingDimension;
  v7 = embeddingCount;
  v8 = [[self alloc] initWithEmbeddingCount:v7 embeddingDimension:v6 paddingIndex:0 maximumNorm:0 pNorm:0 scalesGradientByFrequency:0];

  return v8;
}

- (MLCEmbeddingDescriptor)initWithEmbeddingCount:(id)count embeddingDimension:(id)dimension paddingIndex:(id)index maximumNorm:(id)norm pNorm:(id)pNorm scalesGradientByFrequency:(BOOL)frequency
{
  countCopy = count;
  dimensionCopy = dimension;
  indexCopy = index;
  normCopy = norm;
  pNormCopy = pNorm;
  if ([countCopy integerValue] <= 0)
  {
    v20 = +[MLCLog framework];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [MLCEmbeddingDescriptor initWithEmbeddingCount:a2 embeddingDimension:? paddingIndex:? maximumNorm:? pNorm:? scalesGradientByFrequency:?];
    }

    goto LABEL_26;
  }

  if ([dimensionCopy integerValue] <= 0)
  {
    v20 = +[MLCLog framework];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [MLCEmbeddingDescriptor initWithEmbeddingCount:a2 embeddingDimension:? paddingIndex:? maximumNorm:? pNorm:? scalesGradientByFrequency:?];
    }

    goto LABEL_26;
  }

  if (indexCopy)
  {
    if ([indexCopy integerValue] < 0 || (v19 = objc_msgSend(indexCopy, "unsignedIntegerValue"), v19 > objc_msgSend(countCopy, "unsignedIntegerValue") - 1))
    {
      v20 = +[MLCLog framework];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [MLCEmbeddingDescriptor initWithEmbeddingCount:a2 embeddingDimension:? paddingIndex:? maximumNorm:? pNorm:? scalesGradientByFrequency:?];
      }

LABEL_26:

      selfCopy = 0;
      goto LABEL_27;
    }
  }

  if (normCopy)
  {
    [normCopy floatValue];
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

  if (pNormCopy)
  {
    [pNormCopy floatValue];
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
    objc_storeStrong(&v23->_embeddingCount, count);
    objc_storeStrong(&v24->_embeddingDimension, dimension);
    objc_storeStrong(&v24->_paddingIndex, index);
    objc_storeStrong(&v24->_maximumNorm, norm);
    if (pNormCopy)
    {
      v25 = pNormCopy;
    }

    else
    {
      v25 = &unk_284BA6268;
    }

    objc_storeStrong(&v24->_pNorm, v25);
    v24->_scalesGradientByFrequency = frequency;
  }

  self = v24;
  selfCopy = self;
LABEL_27:

  return selfCopy;
}

- (id)description
{
  v18 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  embeddingCount = [(MLCEmbeddingDescriptor *)self embeddingCount];
  unsignedIntegerValue = [embeddingCount unsignedIntegerValue];
  embeddingDimension = [(MLCEmbeddingDescriptor *)self embeddingDimension];
  unsignedIntegerValue2 = [embeddingDimension unsignedIntegerValue];
  paddingIndex = [(MLCEmbeddingDescriptor *)self paddingIndex];
  unsignedIntegerValue3 = [paddingIndex unsignedIntegerValue];
  maximumNorm = [(MLCEmbeddingDescriptor *)self maximumNorm];
  [maximumNorm floatValue];
  v13 = v12;
  pNorm = [(MLCEmbeddingDescriptor *)self pNorm];
  [pNorm floatValue];
  v16 = [v18 stringWithFormat:@"%@: { embeddingCount=%lu : embeddingDimension=%lu : paddingIndex=%lu : maximumNorm=%f : pNorm=%f : scalesGradientByFrequency=%d }", v4, unsignedIntegerValue, unsignedIntegerValue2, unsignedIntegerValue3, *&v13, v15, -[MLCEmbeddingDescriptor scalesGradientByFrequency](self, "scalesGradientByFrequency")];

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    embeddingCount = [v5 embeddingCount];
    embeddingCount2 = [(MLCEmbeddingDescriptor *)self embeddingCount];
    if (embeddingCount == embeddingCount2)
    {
      embeddingDimension = [v5 embeddingDimension];
      embeddingDimension2 = [(MLCEmbeddingDescriptor *)self embeddingDimension];
      if (embeddingDimension == embeddingDimension2)
      {
        paddingIndex = [v5 paddingIndex];
        paddingIndex2 = [(MLCEmbeddingDescriptor *)self paddingIndex];
        if (paddingIndex == paddingIndex2)
        {
          maximumNorm = [v5 maximumNorm];
          maximumNorm2 = [(MLCEmbeddingDescriptor *)self maximumNorm];
          v23 = maximumNorm;
          if (maximumNorm == maximumNorm2)
          {
            v22 = maximumNorm2;
            pNorm = [v5 pNorm];
            pNorm2 = [(MLCEmbeddingDescriptor *)self pNorm];
            v21 = pNorm;
            if (pNorm == pNorm2)
            {
              v17 = pNorm2;
              scalesGradientByFrequency = [v5 scalesGradientByFrequency];
              v18 = scalesGradientByFrequency ^ [(MLCEmbeddingDescriptor *)self scalesGradientByFrequency];
              pNorm2 = v17;
              v8 = v18 ^ 1;
            }

            else
            {
              v8 = 0;
            }

            maximumNorm2 = v22;
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
  embeddingCount = [(MLCEmbeddingDescriptor *)self embeddingCount];
  v16 = [embeddingCount hash];
  embeddingDimension = [(MLCEmbeddingDescriptor *)self embeddingDimension];
  [embeddingDimension hash];
  paddingIndex = [(MLCEmbeddingDescriptor *)self paddingIndex];
  [paddingIndex hash];
  maximumNorm = [(MLCEmbeddingDescriptor *)self maximumNorm];
  [maximumNorm hash];
  pNorm = [(MLCEmbeddingDescriptor *)self pNorm];
  [pNorm hash];
  [(MLCEmbeddingDescriptor *)self scalesGradientByFrequency];
  hashCombine_6(&v17, v8, v9, v10, v11, v12, v13, v14, v16);

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  embeddingCount = [(MLCEmbeddingDescriptor *)self embeddingCount];
  embeddingDimension = [(MLCEmbeddingDescriptor *)self embeddingDimension];
  paddingIndex = [(MLCEmbeddingDescriptor *)self paddingIndex];
  maximumNorm = [(MLCEmbeddingDescriptor *)self maximumNorm];
  pNorm = [(MLCEmbeddingDescriptor *)self pNorm];
  v10 = [v4 initWithEmbeddingCount:embeddingCount embeddingDimension:embeddingDimension paddingIndex:paddingIndex maximumNorm:maximumNorm pNorm:pNorm scalesGradientByFrequency:{-[MLCEmbeddingDescriptor scalesGradientByFrequency](self, "scalesGradientByFrequency")}];

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