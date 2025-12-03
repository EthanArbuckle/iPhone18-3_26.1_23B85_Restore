@interface MLCSGDOptimizer
+ (MLCSGDOptimizer)optimizerWithDescriptor:(MLCOptimizerDescriptor *)optimizerDescriptor;
- (BOOL)compileForDevice:(id)device;
- (MLCSGDOptimizer)initWithMomentumScale:(float)scale useNesterovMomentum:(BOOL)momentum optimizerDescriptor:(id)descriptor;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MLCSGDOptimizer

+ (MLCSGDOptimizer)optimizerWithDescriptor:(MLCOptimizerDescriptor *)optimizerDescriptor
{
  v4 = optimizerDescriptor;
  v5 = [[self alloc] initWithMomentumScale:0 useNesterovMomentum:v4 optimizerDescriptor:0.0];

  return v5;
}

- (MLCSGDOptimizer)initWithMomentumScale:(float)scale useNesterovMomentum:(BOOL)momentum optimizerDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v14.receiver = self;
  v14.super_class = MLCSGDOptimizer;
  v10 = [(MLCOptimizer *)&v14 initWithDescriptor:descriptorCopy];
  v11 = v10;
  if (v10)
  {
    v10->_momentumScale = scale;
    v10->_usesNesterovMomentum = momentum;
    objc_storeStrong(&v10->_optimizerDescriptor, descriptor);
    v13.receiver = v11;
    v13.super_class = MLCSGDOptimizer;
    [(MLCOptimizer *)&v13 setNumOptimizerDataBuffers:1];
  }

  return v11;
}

- (BOOL)compileForDevice:(id)device
{
  deviceCopy = device;
  computeEngine = [deviceCopy computeEngine];
  optimizerDescriptor = [(MLCSGDOptimizer *)self optimizerDescriptor];
  [(MLCSGDOptimizer *)self momentumScale];
  v9 = v8;
  usesNesterovMomentum = [(MLCSGDOptimizer *)self usesNesterovMomentum];
  LODWORD(v11) = v9;
  v12 = [computeEngine optimizerSGDWithDescriptor:optimizerDescriptor momentunScale:usesNesterovMomentum useNesterovMomentum:v11];

  if (v12 && [v12 count])
  {
    computeEngine2 = [deviceCopy computeEngine];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      computeEngine3 = [deviceCopy computeEngine];
      v16 = [computeEngine3 compileOptimizerDeviceOps:v12];
    }

    else
    {
      v16 = 1;
    }

    v19.receiver = self;
    v19.super_class = MLCSGDOptimizer;
    [(MLCOptimizer *)&v19 bindDevice:deviceCopy deviceOps:v12];
  }

  else
  {
    v17 = +[MLCLog framework];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [MLCPoolingLayer compileForDevice:a2 sourceTensors:v12 resultTensor:v17];
    }

    v16 = 0;
  }

  return v16;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(MLCSGDOptimizer *)self momentumScale];
  v7 = v6;
  usesNesterovMomentum = [(MLCSGDOptimizer *)self usesNesterovMomentum];
  optimizerDescriptor = [(MLCSGDOptimizer *)self optimizerDescriptor];
  v10 = [v3 stringWithFormat:@"%@: { momentumScale=%f : useNesterovMomentum=%d : optimizerDescriptor=%@ }", v5, *&v7, usesNesterovMomentum, optimizerDescriptor];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  [(MLCSGDOptimizer *)self momentumScale];
  v6 = v5;
  usesNesterovMomentum = [(MLCSGDOptimizer *)self usesNesterovMomentum];
  optimizerDescriptor = [(MLCSGDOptimizer *)self optimizerDescriptor];
  LODWORD(v9) = v6;
  v10 = [v4 initWithMomentumScale:usesNesterovMomentum useNesterovMomentum:optimizerDescriptor optimizerDescriptor:v9];

  return v10;
}

@end