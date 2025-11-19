@interface MLCAdamOptimizer
+ (MLCAdamOptimizer)optimizerWithDescriptor:(MLCOptimizerDescriptor *)optimizerDescriptor;
+ (MLCAdamOptimizer)optimizerWithDescriptor:(MLCOptimizerDescriptor *)optimizerDescriptor beta1:(float)beta1 beta2:(float)beta2 epsilon:(float)epsilon timeStep:(NSUInteger)timeStep;
- (BOOL)compileForDevice:(id)a3;
- (MLCAdamOptimizer)initWithDescriptor:(id)a3 beta1:(float)a4 beta2:(float)a5 epsilon:(float)a6 usesAMSGrad:(BOOL)a7 timeStep:(unint64_t)a8;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MLCAdamOptimizer

+ (MLCAdamOptimizer)optimizerWithDescriptor:(MLCOptimizerDescriptor *)optimizerDescriptor
{
  v4 = optimizerDescriptor;
  v5 = [a1 alloc];
  LODWORD(v6) = 1063675494;
  LODWORD(v7) = 1065336439;
  LODWORD(v8) = 841731191;
  v9 = [v5 initWithDescriptor:v4 beta1:0 beta2:1 epsilon:v6 usesAMSGrad:v7 timeStep:v8];

  return v9;
}

+ (MLCAdamOptimizer)optimizerWithDescriptor:(MLCOptimizerDescriptor *)optimizerDescriptor beta1:(float)beta1 beta2:(float)beta2 epsilon:(float)epsilon timeStep:(NSUInteger)timeStep
{
  v12 = optimizerDescriptor;
  v13 = [a1 alloc];
  *&v14 = beta1;
  *&v15 = beta2;
  *&v16 = epsilon;
  v17 = [v13 initWithDescriptor:v12 beta1:0 beta2:timeStep epsilon:v14 usesAMSGrad:v15 timeStep:v16];

  return v17;
}

- (MLCAdamOptimizer)initWithDescriptor:(id)a3 beta1:(float)a4 beta2:(float)a5 epsilon:(float)a6 usesAMSGrad:(BOOL)a7 timeStep:(unint64_t)a8
{
  v9 = a7;
  v15 = a3;
  v21.receiver = self;
  v21.super_class = MLCAdamOptimizer;
  v16 = [(MLCOptimizer *)&v21 initWithDescriptor:v15];
  v17 = v16;
  if (v16)
  {
    v16->_beta1 = a4;
    v16->_beta2 = a5;
    v16->_epsilon = a6;
    v16->_usesAMSGrad = v9;
    v16->_timeStep = a8;
    objc_storeStrong(&v16->_optimizerDescriptor, a3);
    if (v9)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v20.receiver = v17;
    v20.super_class = MLCAdamOptimizer;
    [(MLCOptimizer *)&v20 setNumOptimizerDataBuffers:v18];
  }

  return v17;
}

- (BOOL)compileForDevice:(id)a3
{
  v5 = a3;
  v6 = [v5 computeEngine];
  v7 = [(MLCAdamOptimizer *)self optimizerDescriptor];
  [(MLCAdamOptimizer *)self beta1];
  v9 = v8;
  [(MLCAdamOptimizer *)self beta2];
  v11 = v10;
  [(MLCAdamOptimizer *)self epsilon];
  v13 = v12;
  v14 = [(MLCAdamOptimizer *)self usesAMSGrad];
  v15 = [(MLCAdamOptimizer *)self timeStep];
  LODWORD(v16) = v9;
  LODWORD(v17) = v11;
  LODWORD(v18) = v13;
  v19 = [v6 optimizerAdamWithDescriptor:v7 beta1:v14 beta2:v15 epsilon:0 amsgrad:v16 timeStep:v17 isAdamW:v18];

  if (v19 && [v19 count])
  {
    v20 = [v5 computeEngine];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = [v5 computeEngine];
      v23 = [v22 compileOptimizerDeviceOps:v19];
    }

    else
    {
      v23 = 1;
    }

    v26.receiver = self;
    v26.super_class = MLCAdamOptimizer;
    [(MLCOptimizer *)&v26 bindDevice:v5 deviceOps:v19];
  }

  else
  {
    v24 = +[MLCLog framework];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [MLCPoolingLayer compileForDevice:a2 sourceTensors:v19 resultTensor:v24];
    }

    v23 = 0;
  }

  return v23;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(MLCAdamOptimizer *)self beta1];
  v7 = v6;
  [(MLCAdamOptimizer *)self beta2];
  v9 = v8;
  [(MLCAdamOptimizer *)self epsilon];
  v11 = v10;
  v12 = [(MLCAdamOptimizer *)self usesAMSGrad];
  v13 = [(MLCAdamOptimizer *)self timeStep];
  v14 = [(MLCAdamOptimizer *)self optimizerDescriptor];
  v15 = [v3 stringWithFormat:@"%@: { beta1=%f : beta2=%f : epsilon=%f : usesAMSGrad=%d : timeStep=%lu : optimizerDescriptor=%@ }", v5, *&v7, *&v9, *&v11, v12, v13, v14];

  return v15;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MLCAdamOptimizer *)self optimizerDescriptor];
  [(MLCAdamOptimizer *)self beta1];
  v7 = v6;
  [(MLCAdamOptimizer *)self beta2];
  v9 = v8;
  [(MLCAdamOptimizer *)self epsilon];
  v11 = v10;
  v12 = [(MLCAdamOptimizer *)self usesAMSGrad];
  v13 = [(MLCAdamOptimizer *)self timeStep];
  LODWORD(v14) = v7;
  LODWORD(v15) = v9;
  LODWORD(v16) = v11;
  v17 = [v4 initWithDescriptor:v5 beta1:v12 beta2:v13 epsilon:v14 usesAMSGrad:v15 timeStep:v16];

  return v17;
}

@end