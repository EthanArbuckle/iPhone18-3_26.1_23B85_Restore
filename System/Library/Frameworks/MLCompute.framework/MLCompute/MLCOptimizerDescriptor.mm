@interface MLCOptimizerDescriptor
- (BOOL)isEqual:(id)a3;
- (MLCOptimizerDescriptor)initWithLearningRate:(float)a3 gradientRescale:(float)a4 applyGradientClipping:(BOOL)a5 gradientClipMax:(float)a6 gradientClipMin:(float)a7 regularizationType:(int)a8 regularizationScale:(float)a9;
- (MLCOptimizerDescriptor)initWithLearningRate:(float)a3 gradientRescale:(float)a4 applyGradientClipping:(BOOL)a5 gradientClipMax:(float)a6 gradientClipMin:(float)a7 regularizationType:(int)a8 regularizationScale:(float)a9 gradientClippingType:(int)a10 maximumClippingNorm:(float)a11 customGlobalNorm:(float)a12;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation MLCOptimizerDescriptor

- (MLCOptimizerDescriptor)initWithLearningRate:(float)a3 gradientRescale:(float)a4 applyGradientClipping:(BOOL)a5 gradientClipMax:(float)a6 gradientClipMin:(float)a7 regularizationType:(int)a8 regularizationScale:(float)a9 gradientClippingType:(int)a10 maximumClippingNorm:(float)a11 customGlobalNorm:(float)a12
{
  v23.receiver = self;
  v23.super_class = MLCOptimizerDescriptor;
  result = [(MLCOptimizerDescriptor *)&v23 init];
  if (result)
  {
    result->_learningRate = a3;
    result->_gradientRescale = a4;
    result->_appliesGradientClipping = a5;
    result->_gradientClipMax = a6;
    result->_gradientClipMin = a7;
    result->_regularizationScale = a9;
    result->_regularizationType = a8;
    result->_gradientClippingType = a10;
    result->_maximumClippingNorm = a11;
    result->_customGlobalNorm = a12;
  }

  return result;
}

- (MLCOptimizerDescriptor)initWithLearningRate:(float)a3 gradientRescale:(float)a4 applyGradientClipping:(BOOL)a5 gradientClipMax:(float)a6 gradientClipMin:(float)a7 regularizationType:(int)a8 regularizationScale:(float)a9
{
  v17.receiver = self;
  v17.super_class = MLCOptimizerDescriptor;
  result = [(MLCOptimizerDescriptor *)&v17 init];
  if (result)
  {
    result->_learningRate = a3;
    result->_gradientRescale = a4;
    result->_appliesGradientClipping = a5;
    result->_gradientClipMax = a6;
    result->_gradientClipMin = a7;
    result->_regularizationType = a8;
    result->_regularizationScale = a9;
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
  v10 = [(MLCOptimizerDescriptor *)self appliesGradientClipping];
  [(MLCOptimizerDescriptor *)self gradientClipMax];
  v12 = v11;
  [(MLCOptimizerDescriptor *)self gradientClipMin];
  v14 = v13;
  [(MLCOptimizerDescriptor *)self regularizationScale];
  v16 = v15;
  v17 = [(MLCOptimizerDescriptor *)self regularizationType];
  v18 = [(MLCOptimizerDescriptor *)self gradientClippingType];
  [(MLCOptimizerDescriptor *)self maximumClippingNorm];
  v20 = v19;
  [(MLCOptimizerDescriptor *)self customGlobalNorm];
  v22 = [v3 stringWithFormat:@"%@: { learningRate=%f : gradientRescale=%f : applyGradientClipping=%d : gradientClipMax=%f : gradientClipMin=%f : regularizationScale=%f : regularizationType=%d : gradientClippingType=%d : maximumClippingNorm=%f : customGlobalNorm=%f}", v5, *&v7, *&v9, v10, *&v12, *&v14, *&v16, v17, v18, *&v20, v21];

  return v22;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

    v12 = [v5 appliesGradientClipping];
    if (v12 != [(MLCOptimizerDescriptor *)self appliesGradientClipping])
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

    v22 = [v5 regularizationType];
    if (v22 == -[MLCOptimizerDescriptor regularizationType](self, "regularizationType") && (v23 = [v5 gradientClippingType], v23 == -[MLCOptimizerDescriptor gradientClippingType](self, "gradientClippingType")) && (objc_msgSend(v5, "maximumClippingNorm"), v25 = v24, -[MLCOptimizerDescriptor maximumClippingNorm](self, "maximumClippingNorm"), v25 == v26))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(MLCOptimizerDescriptor *)self learningRate];
  v6 = v5;
  [(MLCOptimizerDescriptor *)self gradientRescale];
  v8 = v7;
  v9 = [(MLCOptimizerDescriptor *)self appliesGradientClipping];
  [(MLCOptimizerDescriptor *)self gradientClipMax];
  v11 = v10;
  [(MLCOptimizerDescriptor *)self gradientClipMin];
  v13 = v12;
  v14 = [(MLCOptimizerDescriptor *)self regularizationType];
  [(MLCOptimizerDescriptor *)self regularizationScale];
  v16 = v15;
  v17 = [(MLCOptimizerDescriptor *)self gradientClippingType];
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

  return [v4 initWithLearningRate:v9 gradientRescale:v14 applyGradientClipping:v17 gradientClipMax:v21 gradientClipMin:v22 regularizationType:v23 regularizationScale:v24 gradientClippingType:v25 maximumClippingNorm:v26 customGlobalNorm:v20];
}

@end