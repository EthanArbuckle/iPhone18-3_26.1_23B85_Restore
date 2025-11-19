@interface MLCOptimizer
- (MLCOptimizer)initWithDescriptor:(id)a3;
- (MLCOptimizer)initWithLearningRate:(float)a3 gradientRescale:(float)a4 applyGradientClipping:(BOOL)a5 gradientClipMax:(float)a6 gradientClipMin:(float)a7 regularizationScale:(float)a8 regularizationType:(int)a9;
- (MLCOptimizer)initWithLearningRate:(float)a3 gradientRescale:(float)a4 applyGradientClipping:(BOOL)a5 gradientClipMax:(float)a6 gradientClipMin:(float)a7 regularizationScale:(float)a8 regularizationType:(int)a9 gradientClippingType:(int)a10 maximumClippingNorm:(float)a11 customGlobalNorm:(float)a12;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)bindDevice:(id)a3 deviceOps:(id)a4;
@end

@implementation MLCOptimizer

- (MLCOptimizer)initWithDescriptor:(id)a3
{
  v4 = a3;
  [v4 learningRate];
  v6 = v5;
  [v4 gradientRescale];
  v8 = v7;
  v9 = [v4 appliesGradientClipping];
  [v4 gradientClipMax];
  v11 = v10;
  [v4 gradientClipMin];
  v13 = v12;
  [v4 regularizationScale];
  v15 = v14;
  v16 = [v4 regularizationType];
  v17 = [v4 gradientClippingType];
  [v4 maximumClippingNorm];
  v19 = v18;
  [v4 customGlobalNorm];
  v21 = v20;

  LODWORD(v22) = v6;
  LODWORD(v23) = v8;
  LODWORD(v24) = v11;
  LODWORD(v25) = v13;
  LODWORD(v26) = v15;
  LODWORD(v27) = v19;
  LODWORD(v28) = v21;

  return [(MLCOptimizer *)self initWithLearningRate:v9 gradientRescale:v16 applyGradientClipping:v17 gradientClipMax:v22 gradientClipMin:v23 regularizationScale:v24 regularizationType:v25 gradientClippingType:v26 maximumClippingNorm:v27 customGlobalNorm:v28];
}

- (MLCOptimizer)initWithLearningRate:(float)a3 gradientRescale:(float)a4 applyGradientClipping:(BOOL)a5 gradientClipMax:(float)a6 gradientClipMin:(float)a7 regularizationScale:(float)a8 regularizationType:(int)a9 gradientClippingType:(int)a10 maximumClippingNorm:(float)a11 customGlobalNorm:(float)a12
{
  v23.receiver = self;
  v23.super_class = MLCOptimizer;
  result = [(MLCOptimizer *)&v23 init];
  if (result)
  {
    result->_learningRate = a3;
    result->_gradientRescale = a4;
    result->_appliesGradientClipping = a5;
    result->_gradientClipMax = a6;
    result->_gradientClipMin = a7;
    result->_regularizationScale = a8;
    result->_numOptimizerDataBuffers = 0;
    result->_regularizationType = a9;
    result->_gradientClippingType = a10;
    result->_maximumClippingNorm = a11;
    result->_customGlobalNorm = a12;
  }

  return result;
}

- (MLCOptimizer)initWithLearningRate:(float)a3 gradientRescale:(float)a4 applyGradientClipping:(BOOL)a5 gradientClipMax:(float)a6 gradientClipMin:(float)a7 regularizationScale:(float)a8 regularizationType:(int)a9
{
  v17.receiver = self;
  v17.super_class = MLCOptimizer;
  result = [(MLCOptimizer *)&v17 init];
  if (result)
  {
    result->_learningRate = a3;
    result->_gradientRescale = a4;
    result->_appliesGradientClipping = a5;
    result->_gradientClipMax = a6;
    result->_gradientClipMin = a7;
    result->_regularizationScale = a8;
    result->_regularizationType = a9;
    result->_numOptimizerDataBuffers = 0;
  }

  return result;
}

- (void)bindDevice:(id)a3 deviceOps:(id)a4
{
  v6 = a4;
  [(MLCOptimizer *)self setDevice:a3];
  [(MLCOptimizer *)self setDeviceOps:v6];

  [(MLCOptimizer *)self setOneStepOptimizerBuffers:0];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCOptimizer *)self device];
  [(MLCOptimizer *)self learningRate];
  v8 = v7;
  [(MLCOptimizer *)self gradientRescale];
  v10 = v9;
  v11 = [(MLCOptimizer *)self appliesGradientClipping];
  [(MLCOptimizer *)self gradientClipMax];
  v13 = v12;
  [(MLCOptimizer *)self gradientClipMin];
  v15 = v14;
  [(MLCOptimizer *)self regularizationScale];
  v17 = v16;
  v18 = [(MLCOptimizer *)self regularizationType];
  v19 = [(MLCOptimizer *)self deviceOps];
  v20 = [(MLCOptimizer *)self gradientClippingType];
  [(MLCOptimizer *)self maximumClippingNorm];
  v22 = v21;
  [(MLCOptimizer *)self customGlobalNorm];
  v24 = [v3 stringWithFormat:@"%@: { device=%@ : learningRate=%f : gradientRescale=%f : applyGradientClipping=%d : gradientClipMax=%f : gradientClipMin=%f : regularizationScale=%f : regularizationType=%d : deviceOps=%@ : gradientClippingType=%d : maximumClippingNorm=%f : customGlobalNorm=%f}", v5, v6, *&v8, *&v10, v11, *&v13, *&v15, *&v17, v18, v19, v20, *&v22, v23];

  return v24;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(MLCOptimizer *)self learningRate];
  v6 = v5;
  [(MLCOptimizer *)self gradientRescale];
  v8 = v7;
  v9 = [(MLCOptimizer *)self appliesGradientClipping];
  [(MLCOptimizer *)self gradientClipMax];
  v11 = v10;
  [(MLCOptimizer *)self gradientClipMin];
  v13 = v12;
  [(MLCOptimizer *)self regularizationScale];
  v15 = v14;
  v16 = [(MLCOptimizer *)self regularizationType];
  v17 = [(MLCOptimizer *)self gradientClippingType];
  [(MLCOptimizer *)self maximumClippingNorm];
  v19 = v18;
  [(MLCOptimizer *)self customGlobalNorm];
  LODWORD(v20) = LODWORD(v21);
  LODWORD(v21) = v6;
  LODWORD(v22) = v8;
  LODWORD(v23) = v11;
  LODWORD(v24) = v13;
  LODWORD(v25) = v15;
  LODWORD(v26) = v19;

  return [v4 initWithLearningRate:v9 gradientRescale:v16 applyGradientClipping:v17 gradientClipMax:v21 gradientClipMin:v22 regularizationScale:v23 regularizationType:v24 gradientClippingType:v25 maximumClippingNorm:v26 customGlobalNorm:v20];
}

@end