@interface MLCOptimizerDescriptor
- (BOOL)isEqual:(id)equal;
- (MLCOptimizerDescriptor)initWithLearningRate:(float)rate gradientRescale:(float)rescale applyGradientClipping:(BOOL)clipping gradientClipMax:(float)max gradientClipMin:(float)min regularizationType:(int)type regularizationScale:(float)scale;
- (MLCOptimizerDescriptor)initWithLearningRate:(float)rate gradientRescale:(float)rescale applyGradientClipping:(BOOL)clipping gradientClipMax:(float)max gradientClipMin:(float)min regularizationType:(int)type regularizationScale:(float)scale gradientClippingType:(int)self0 maximumClippingNorm:(float)self1 customGlobalNorm:(float)self2;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation MLCOptimizerDescriptor

- (MLCOptimizerDescriptor)initWithLearningRate:(float)rate gradientRescale:(float)rescale applyGradientClipping:(BOOL)clipping gradientClipMax:(float)max gradientClipMin:(float)min regularizationType:(int)type regularizationScale:(float)scale gradientClippingType:(int)self0 maximumClippingNorm:(float)self1 customGlobalNorm:(float)self2
{
  v23.receiver = self;
  v23.super_class = MLCOptimizerDescriptor;
  result = [(MLCOptimizerDescriptor *)&v23 init];
  if (result)
  {
    result->_learningRate = rate;
    result->_gradientRescale = rescale;
    result->_appliesGradientClipping = clipping;
    result->_gradientClipMax = max;
    result->_gradientClipMin = min;
    result->_regularizationScale = scale;
    result->_regularizationType = type;
    result->_gradientClippingType = clippingType;
    result->_maximumClippingNorm = norm;
    result->_customGlobalNorm = globalNorm;
  }

  return result;
}

- (MLCOptimizerDescriptor)initWithLearningRate:(float)rate gradientRescale:(float)rescale applyGradientClipping:(BOOL)clipping gradientClipMax:(float)max gradientClipMin:(float)min regularizationType:(int)type regularizationScale:(float)scale
{
  v17.receiver = self;
  v17.super_class = MLCOptimizerDescriptor;
  result = [(MLCOptimizerDescriptor *)&v17 init];
  if (result)
  {
    result->_learningRate = rate;
    result->_gradientRescale = rescale;
    result->_appliesGradientClipping = clipping;
    result->_gradientClipMax = max;
    result->_gradientClipMin = min;
    result->_regularizationType = type;
    result->_regularizationScale = scale;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(MLCOptimizerDescriptor *)self learningRate];
  v7 = v6;
  [(MLCOptimizerDescriptor *)self gradientRescale];
  v9 = v8;
  appliesGradientClipping = [(MLCOptimizerDescriptor *)self appliesGradientClipping];
  [(MLCOptimizerDescriptor *)self gradientClipMax];
  v12 = v11;
  [(MLCOptimizerDescriptor *)self gradientClipMin];
  v14 = v13;
  [(MLCOptimizerDescriptor *)self regularizationScale];
  v16 = v15;
  regularizationType = [(MLCOptimizerDescriptor *)self regularizationType];
  gradientClippingType = [(MLCOptimizerDescriptor *)self gradientClippingType];
  [(MLCOptimizerDescriptor *)self maximumClippingNorm];
  v20 = v19;
  [(MLCOptimizerDescriptor *)self customGlobalNorm];
  v22 = [v3 stringWithFormat:@"%@: { learningRate=%f : gradientRescale=%f : applyGradientClipping=%d : gradientClipMax=%f : gradientClipMin=%f : regularizationScale=%f : regularizationType=%d : gradientClippingType=%d : maximumClippingNorm=%f : customGlobalNorm=%f}", v5, *&v7, *&v9, appliesGradientClipping, *&v12, *&v14, *&v16, regularizationType, gradientClippingType, *&v20, v21];

  return v22;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [v5 learningRate];
    v7 = v6;
    [(MLCOptimizerDescriptor *)self learningRate];
    if (v7 != v8)
    {
      goto LABEL_13;
    }

    [v5 gradientRescale];
    v10 = v9;
    [(MLCOptimizerDescriptor *)self gradientRescale];
    if (v10 != v11)
    {
      goto LABEL_13;
    }

    appliesGradientClipping = [v5 appliesGradientClipping];
    if (appliesGradientClipping != [(MLCOptimizerDescriptor *)self appliesGradientClipping])
    {
      goto LABEL_13;
    }

    [v5 gradientClipMax];
    v14 = v13;
    [(MLCOptimizerDescriptor *)self gradientClipMax];
    if (v14 != v15)
    {
      goto LABEL_13;
    }

    [v5 gradientClipMin];
    v17 = v16;
    [(MLCOptimizerDescriptor *)self gradientClipMin];
    if (v17 != v18)
    {
      goto LABEL_13;
    }

    [v5 regularizationScale];
    v20 = v19;
    [(MLCOptimizerDescriptor *)self regularizationScale];
    if (v20 != v21)
    {
      goto LABEL_13;
    }

    regularizationType = [v5 regularizationType];
    if (regularizationType == -[MLCOptimizerDescriptor regularizationType](self, "regularizationType") && (v23 = [v5 gradientClippingType], v23 == -[MLCOptimizerDescriptor gradientClippingType](self, "gradientClippingType")) && (objc_msgSend(v5, "maximumClippingNorm"), v25 = v24, -[MLCOptimizerDescriptor maximumClippingNorm](self, "maximumClippingNorm"), v25 == v26))
    {
      [v5 customGlobalNorm];
      v28 = v27;
      [(MLCOptimizerDescriptor *)self customGlobalNorm];
      v30 = v28 == v29;
    }

    else
    {
LABEL_13:
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (unint64_t)hash
{
  v26 = 0;
  v3 = MEMORY[0x277CCABB0];
  [(MLCOptimizerDescriptor *)self learningRate];
  v25 = [v3 numberWithFloat:?];
  v23 = [v25 hash];
  v4 = MEMORY[0x277CCABB0];
  [(MLCOptimizerDescriptor *)self gradientRescale];
  v24 = [v4 numberWithFloat:?];
  [v24 hash];
  [(MLCOptimizerDescriptor *)self appliesGradientClipping];
  v5 = MEMORY[0x277CCABB0];
  [(MLCOptimizerDescriptor *)self gradientClipMax];
  v22 = [v5 numberWithFloat:?];
  [v22 hash];
  v6 = MEMORY[0x277CCABB0];
  [(MLCOptimizerDescriptor *)self gradientClipMin];
  v7 = [v6 numberWithFloat:?];
  [v7 hash];
  v8 = MEMORY[0x277CCABB0];
  [(MLCOptimizerDescriptor *)self regularizationScale];
  v9 = [v8 numberWithFloat:?];
  [v9 hash];
  [(MLCOptimizerDescriptor *)self regularizationType];
  [(MLCOptimizerDescriptor *)self gradientClippingType];
  v10 = MEMORY[0x277CCABB0];
  [(MLCOptimizerDescriptor *)self maximumClippingNorm];
  v11 = [v10 numberWithFloat:?];
  [v11 hash];
  v12 = MEMORY[0x277CCABB0];
  [(MLCOptimizerDescriptor *)self customGlobalNorm];
  v13 = [v12 numberWithFloat:?];
  [v13 hash];
  hashCombine_4(&v26, v14, v15, v16, v17, v18, v19, v20, v23);

  return v26;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(MLCOptimizerDescriptor *)self learningRate];
  v6 = v5;
  [(MLCOptimizerDescriptor *)self gradientRescale];
  v8 = v7;
  appliesGradientClipping = [(MLCOptimizerDescriptor *)self appliesGradientClipping];
  [(MLCOptimizerDescriptor *)self gradientClipMax];
  v11 = v10;
  [(MLCOptimizerDescriptor *)self gradientClipMin];
  v13 = v12;
  regularizationType = [(MLCOptimizerDescriptor *)self regularizationType];
  [(MLCOptimizerDescriptor *)self regularizationScale];
  v16 = v15;
  gradientClippingType = [(MLCOptimizerDescriptor *)self gradientClippingType];
  [(MLCOptimizerDescriptor *)self maximumClippingNorm];
  v19 = v18;
  [(MLCOptimizerDescriptor *)self customGlobalNorm];
  LODWORD(v20) = LODWORD(v21);
  LODWORD(v21) = v6;
  LODWORD(v22) = v8;
  LODWORD(v23) = v11;
  LODWORD(v24) = v13;
  LODWORD(v25) = v16;
  LODWORD(v26) = v19;

  return [v4 initWithLearningRate:appliesGradientClipping gradientRescale:regularizationType applyGradientClipping:gradientClippingType gradientClipMax:v21 gradientClipMin:v22 regularizationType:v23 regularizationScale:v24 gradientClippingType:v25 maximumClippingNorm:v26 customGlobalNorm:v20];
}

@end