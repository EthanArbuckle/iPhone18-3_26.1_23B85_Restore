@interface MLCOptimizer
- (MLCOptimizer)initWithDescriptor:(id)descriptor;
- (MLCOptimizer)initWithLearningRate:(float)rate gradientRescale:(float)rescale applyGradientClipping:(BOOL)clipping gradientClipMax:(float)max gradientClipMin:(float)min regularizationScale:(float)scale regularizationType:(int)type;
- (MLCOptimizer)initWithLearningRate:(float)rate gradientRescale:(float)rescale applyGradientClipping:(BOOL)clipping gradientClipMax:(float)max gradientClipMin:(float)min regularizationScale:(float)scale regularizationType:(int)type gradientClippingType:(int)self0 maximumClippingNorm:(float)self1 customGlobalNorm:(float)self2;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)bindDevice:(id)device deviceOps:(id)ops;
@end

@implementation MLCOptimizer

- (MLCOptimizer)initWithDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  [descriptorCopy learningRate];
  v6 = v5;
  [descriptorCopy gradientRescale];
  v8 = v7;
  appliesGradientClipping = [descriptorCopy appliesGradientClipping];
  [descriptorCopy gradientClipMax];
  v11 = v10;
  [descriptorCopy gradientClipMin];
  v13 = v12;
  [descriptorCopy regularizationScale];
  v15 = v14;
  regularizationType = [descriptorCopy regularizationType];
  gradientClippingType = [descriptorCopy gradientClippingType];
  [descriptorCopy maximumClippingNorm];
  v19 = v18;
  [descriptorCopy customGlobalNorm];
  v21 = v20;

  LODWORD(v22) = v6;
  LODWORD(v23) = v8;
  LODWORD(v24) = v11;
  LODWORD(v25) = v13;
  LODWORD(v26) = v15;
  LODWORD(v27) = v19;
  LODWORD(v28) = v21;

  return [(MLCOptimizer *)self initWithLearningRate:appliesGradientClipping gradientRescale:regularizationType applyGradientClipping:gradientClippingType gradientClipMax:v22 gradientClipMin:v23 regularizationScale:v24 regularizationType:v25 gradientClippingType:v26 maximumClippingNorm:v27 customGlobalNorm:v28];
}

- (MLCOptimizer)initWithLearningRate:(float)rate gradientRescale:(float)rescale applyGradientClipping:(BOOL)clipping gradientClipMax:(float)max gradientClipMin:(float)min regularizationScale:(float)scale regularizationType:(int)type gradientClippingType:(int)self0 maximumClippingNorm:(float)self1 customGlobalNorm:(float)self2
{
  v23.receiver = self;
  v23.super_class = MLCOptimizer;
  result = [(MLCOptimizer *)&v23 init];
  if (result)
  {
    result->_learningRate = rate;
    result->_gradientRescale = rescale;
    result->_appliesGradientClipping = clipping;
    result->_gradientClipMax = max;
    result->_gradientClipMin = min;
    result->_regularizationScale = scale;
    result->_numOptimizerDataBuffers = 0;
    result->_regularizationType = type;
    result->_gradientClippingType = clippingType;
    result->_maximumClippingNorm = norm;
    result->_customGlobalNorm = globalNorm;
  }

  return result;
}

- (MLCOptimizer)initWithLearningRate:(float)rate gradientRescale:(float)rescale applyGradientClipping:(BOOL)clipping gradientClipMax:(float)max gradientClipMin:(float)min regularizationScale:(float)scale regularizationType:(int)type
{
  v17.receiver = self;
  v17.super_class = MLCOptimizer;
  result = [(MLCOptimizer *)&v17 init];
  if (result)
  {
    result->_learningRate = rate;
    result->_gradientRescale = rescale;
    result->_appliesGradientClipping = clipping;
    result->_gradientClipMax = max;
    result->_gradientClipMin = min;
    result->_regularizationScale = scale;
    result->_regularizationType = type;
    result->_numOptimizerDataBuffers = 0;
  }

  return result;
}

- (void)bindDevice:(id)device deviceOps:(id)ops
{
  opsCopy = ops;
  [(MLCOptimizer *)self setDevice:device];
  [(MLCOptimizer *)self setDeviceOps:opsCopy];

  [(MLCOptimizer *)self setOneStepOptimizerBuffers:0];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  device = [(MLCOptimizer *)self device];
  [(MLCOptimizer *)self learningRate];
  v8 = v7;
  [(MLCOptimizer *)self gradientRescale];
  v10 = v9;
  appliesGradientClipping = [(MLCOptimizer *)self appliesGradientClipping];
  [(MLCOptimizer *)self gradientClipMax];
  v13 = v12;
  [(MLCOptimizer *)self gradientClipMin];
  v15 = v14;
  [(MLCOptimizer *)self regularizationScale];
  v17 = v16;
  regularizationType = [(MLCOptimizer *)self regularizationType];
  deviceOps = [(MLCOptimizer *)self deviceOps];
  gradientClippingType = [(MLCOptimizer *)self gradientClippingType];
  [(MLCOptimizer *)self maximumClippingNorm];
  v22 = v21;
  [(MLCOptimizer *)self customGlobalNorm];
  v24 = [v3 stringWithFormat:@"%@: { device=%@ : learningRate=%f : gradientRescale=%f : applyGradientClipping=%d : gradientClipMax=%f : gradientClipMin=%f : regularizationScale=%f : regularizationType=%d : deviceOps=%@ : gradientClippingType=%d : maximumClippingNorm=%f : customGlobalNorm=%f}", v5, device, *&v8, *&v10, appliesGradientClipping, *&v13, *&v15, *&v17, regularizationType, deviceOps, gradientClippingType, *&v22, v23];

  return v24;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(MLCOptimizer *)self learningRate];
  v6 = v5;
  [(MLCOptimizer *)self gradientRescale];
  v8 = v7;
  appliesGradientClipping = [(MLCOptimizer *)self appliesGradientClipping];
  [(MLCOptimizer *)self gradientClipMax];
  v11 = v10;
  [(MLCOptimizer *)self gradientClipMin];
  v13 = v12;
  [(MLCOptimizer *)self regularizationScale];
  v15 = v14;
  regularizationType = [(MLCOptimizer *)self regularizationType];
  gradientClippingType = [(MLCOptimizer *)self gradientClippingType];
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

  return [v4 initWithLearningRate:appliesGradientClipping gradientRescale:regularizationType applyGradientClipping:gradientClippingType gradientClipMax:v21 gradientClipMin:v22 regularizationScale:v23 regularizationType:v24 gradientClippingType:v25 maximumClippingNorm:v26 customGlobalNorm:v20];
}

@end