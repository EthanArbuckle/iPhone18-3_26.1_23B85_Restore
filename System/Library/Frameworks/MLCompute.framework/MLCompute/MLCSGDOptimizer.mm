@interface MLCSGDOptimizer
+ (MLCSGDOptimizer)optimizerWithDescriptor:(MLCOptimizerDescriptor *)optimizerDescriptor;
- (BOOL)compileForDevice:(id)a3;
- (MLCSGDOptimizer)initWithMomentumScale:(float)a3 useNesterovMomentum:(BOOL)a4 optimizerDescriptor:(id)a5;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MLCSGDOptimizer

+ (MLCSGDOptimizer)optimizerWithDescriptor:(MLCOptimizerDescriptor *)optimizerDescriptor
{
  v4 = optimizerDescriptor;
  v5 = [[a1 alloc] initWithMomentumScale:0 useNesterovMomentum:v4 optimizerDescriptor:0.0];

  return v5;
}

- (MLCSGDOptimizer)initWithMomentumScale:(float)a3 useNesterovMomentum:(BOOL)a4 optimizerDescriptor:(id)a5
{
  v9 = a5;
  v14.receiver = self;
  v14.super_class = MLCSGDOptimizer;
  v10 = [(MLCOptimizer *)&v14 initWithDescriptor:v9];
  v11 = v10;
  if (v10)
  {
    v10->_momentumScale = a3;
    v10->_usesNesterovMomentum = a4;
    objc_storeStrong(&v10->_optimizerDescriptor, a5);
    v13.receiver = v11;
    v13.super_class = MLCSGDOptimizer;
    [(MLCOptimizer *)&v13 setNumOptimizerDataBuffers:1];
  }

  return v11;
}

- (BOOL)compileForDevice:(id)a3
{
  v5 = a3;
  v6 = [v5 computeEngine];
  v7 = [(MLCSGDOptimizer *)self optimizerDescriptor];
  [(MLCSGDOptimizer *)self momentumScale];
  v9 = v8;
  v10 = [(MLCSGDOptimizer *)self usesNesterovMomentum];
  LODWORD(v11) = v9;
  v12 = [v6 optimizerSGDWithDescriptor:v7 momentunScale:v10 useNesterovMomentum:v11];

  if (v12 && [v12 count])
  {
    v13 = [v5 computeEngine];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [v5 computeEngine];
      v16 = [v15 compileOptimizerDeviceOps:v12];
    }

    else
    {
      v16 = 1;
    }

    v19.receiver = self;
    v19.super_class = MLCSGDOptimizer;
    [(MLCOptimizer *)&v19 bindDevice:v5 deviceOps:v12];
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
  v8 = [(MLCSGDOptimizer *)self usesNesterovMomentum];
  v9 = [(MLCSGDOptimizer *)self optimizerDescriptor];
  v10 = [v3 stringWithFormat:@"%@: { momentumScale=%f : useNesterovMomentum=%d : optimizerDescriptor=%@ }", v5, *&v7, v8, v9];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  [(MLCSGDOptimizer *)self momentumScale];
  v6 = v5;
  v7 = [(MLCSGDOptimizer *)self usesNesterovMomentum];
  v8 = [(MLCSGDOptimizer *)self optimizerDescriptor];
  LODWORD(v9) = v6;
  v10 = [v4 initWithMomentumScale:v7 useNesterovMomentum:v8 optimizerDescriptor:v9];

  return v10;
}

@end