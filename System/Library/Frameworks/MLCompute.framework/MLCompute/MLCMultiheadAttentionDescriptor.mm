@interface MLCMultiheadAttentionDescriptor
+ (MLCMultiheadAttentionDescriptor)descriptorWithModelDimension:(NSUInteger)modelDimension headCount:(NSUInteger)headCount;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation MLCMultiheadAttentionDescriptor

+ (MLCMultiheadAttentionDescriptor)descriptorWithModelDimension:(NSUInteger)modelDimension headCount:(NSUInteger)headCount
{
  LOBYTE(v6) = 0;
  v4 = [[self alloc] initWithModelDimension:modelDimension keyDimension:modelDimension valueDimension:modelDimension headCount:headCount dropout:1 hasBias:0 hasAttentionBias:0.0 addsZeroAttention:v6];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  modelDimension = [(MLCMultiheadAttentionDescriptor *)self modelDimension];
  keyDimension = [(MLCMultiheadAttentionDescriptor *)self keyDimension];
  valueDimension = [(MLCMultiheadAttentionDescriptor *)self valueDimension];
  headCount = [(MLCMultiheadAttentionDescriptor *)self headCount];
  [(MLCMultiheadAttentionDescriptor *)self dropout];
  v11 = [v3 stringWithFormat:@"%@: { modelDimension=%lu : keyDimension=%lu : valueDimension=%lu : headCount=%lu : dropout=%f : hasBias=%d : hasAttentionBias=%d : addsZeroAttention=%d }", v5, modelDimension, keyDimension, valueDimension, headCount, v10, -[MLCMultiheadAttentionDescriptor hasBiases](self, "hasBiases"), -[MLCMultiheadAttentionDescriptor hasAttentionBiases](self, "hasAttentionBiases"), -[MLCMultiheadAttentionDescriptor addsZeroAttention](self, "addsZeroAttention")];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    modelDimension = [v5 modelDimension];
    if (modelDimension == -[MLCMultiheadAttentionDescriptor modelDimension](self, "modelDimension") && (v7 = [v5 keyDimension], v7 == -[MLCMultiheadAttentionDescriptor keyDimension](self, "keyDimension")) && (v8 = objc_msgSend(v5, "headCount"), v8 == -[MLCMultiheadAttentionDescriptor headCount](self, "headCount")) && (objc_msgSend(v5, "dropout"), v10 = v9, -[MLCMultiheadAttentionDescriptor dropout](self, "dropout"), v10 == v11) && (v12 = objc_msgSend(v5, "hasBiases"), v12 == -[MLCMultiheadAttentionDescriptor hasBiases](self, "hasBiases")) && (v13 = objc_msgSend(v5, "hasAttentionBiases"), v13 == -[MLCMultiheadAttentionDescriptor hasAttentionBiases](self, "hasAttentionBiases")))
    {
      addsZeroAttention = [v5 addsZeroAttention];
      v14 = addsZeroAttention ^ [(MLCMultiheadAttentionDescriptor *)self addsZeroAttention]^ 1;
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  v14 = 0;
  modelDimension = [(MLCMultiheadAttentionDescriptor *)self modelDimension];
  [(MLCMultiheadAttentionDescriptor *)self keyDimension];
  [(MLCMultiheadAttentionDescriptor *)self valueDimension];
  [(MLCMultiheadAttentionDescriptor *)self headCount];
  v4 = MEMORY[0x277CCABB0];
  [(MLCMultiheadAttentionDescriptor *)self dropout];
  v5 = [v4 numberWithFloat:?];
  [v5 hash];
  [(MLCMultiheadAttentionDescriptor *)self hasBiases];
  [(MLCMultiheadAttentionDescriptor *)self hasAttentionBiases];
  [(MLCMultiheadAttentionDescriptor *)self addsZeroAttention];
  hashCombine_1(&v14, v6, v7, v8, v9, v10, v11, v12, modelDimension);

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  modelDimension = [(MLCMultiheadAttentionDescriptor *)self modelDimension];
  keyDimension = [(MLCMultiheadAttentionDescriptor *)self keyDimension];
  valueDimension = [(MLCMultiheadAttentionDescriptor *)self valueDimension];
  headCount = [(MLCMultiheadAttentionDescriptor *)self headCount];
  [(MLCMultiheadAttentionDescriptor *)self dropout];
  v10 = v9;
  hasBiases = [(MLCMultiheadAttentionDescriptor *)self hasBiases];
  hasAttentionBiases = [(MLCMultiheadAttentionDescriptor *)self hasAttentionBiases];
  LOBYTE(v15) = [(MLCMultiheadAttentionDescriptor *)self addsZeroAttention];
  LODWORD(v13) = v10;
  return [v4 initWithModelDimension:modelDimension keyDimension:keyDimension valueDimension:valueDimension headCount:headCount dropout:hasBiases hasBias:hasAttentionBiases hasAttentionBias:v13 addsZeroAttention:v15];
}

- (void)initWithModelDimension:(const char *)a1 keyDimension:valueDimension:headCount:dropout:hasBias:hasAttentionBias:addsZeroAttention:.cold.1(const char *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@ model dimension must be divisible by number of heads", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)initWithModelDimension:(const char *)a1 keyDimension:valueDimension:headCount:dropout:hasBias:hasAttentionBias:addsZeroAttention:.cold.2(const char *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@ droupout is a probability between zero and one", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x277D85DE8];
}

@end