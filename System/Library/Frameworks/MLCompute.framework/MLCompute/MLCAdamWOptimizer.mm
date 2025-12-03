@interface MLCAdamWOptimizer
+ (MLCAdamWOptimizer)optimizerWithDescriptor:(MLCOptimizerDescriptor *)optimizerDescriptor;
- (BOOL)compileForDevice:(id)device;
- (MLCAdamWOptimizer)initWithDescriptor:(id)descriptor beta1:(float)beta1 beta2:(float)beta2 epsilon:(float)epsilon usesAMSGrad:(BOOL)grad timeStep:(unint64_t)step;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MLCAdamWOptimizer

+ (MLCAdamWOptimizer)optimizerWithDescriptor:(MLCOptimizerDescriptor *)optimizerDescriptor
{
  v4 = optimizerDescriptor;
  v5 = [self alloc];
  LODWORD(v6) = 1063675494;
  LODWORD(v7) = 1065336439;
  LODWORD(v8) = 841731191;
  v9 = [v5 initWithDescriptor:v4 beta1:0 beta2:1 epsilon:v6 usesAMSGrad:v7 timeStep:v8];

  return v9;
}

- (MLCAdamWOptimizer)initWithDescriptor:(id)descriptor beta1:(float)beta1 beta2:(float)beta2 epsilon:(float)epsilon usesAMSGrad:(BOOL)grad timeStep:(unint64_t)step
{
  gradCopy = grad;
  descriptorCopy = descriptor;
  v21.receiver = self;
  v21.super_class = MLCAdamWOptimizer;
  v16 = [(MLCOptimizer *)&v21 initWithDescriptor:descriptorCopy];
  v17 = v16;
  if (v16)
  {
    v16->_beta1 = beta1;
    v16->_beta2 = beta2;
    v16->_epsilon = epsilon;
    v16->_usesAMSGrad = gradCopy;
    v16->_timeStep = step;
    objc_storeStrong(&v16->_optimizerDescriptor, descriptor);
    if (gradCopy)
    {
      v18 = 3;
    }

    else
    {
      v18 = 2;
    }

    v20.receiver = v17;
    v20.super_class = MLCAdamWOptimizer;
    [(MLCOptimizer *)&v20 setNumOptimizerDataBuffers:v18];
  }

  return v17;
}

- (BOOL)compileForDevice:(id)device
{
  deviceCopy = device;
  computeEngine = [deviceCopy computeEngine];
  optimizerDescriptor = [(MLCAdamWOptimizer *)self optimizerDescriptor];
  [(MLCAdamWOptimizer *)self beta1];
  v9 = v8;
  [(MLCAdamWOptimizer *)self beta2];
  v11 = v10;
  [(MLCAdamWOptimizer *)self epsilon];
  v13 = v12;
  usesAMSGrad = [(MLCAdamWOptimizer *)self usesAMSGrad];
  timeStep = [(MLCAdamWOptimizer *)self timeStep];
  LODWORD(v16) = v9;
  LODWORD(v17) = v11;
  LODWORD(v18) = v13;
  v19 = [computeEngine optimizerAdamWithDescriptor:optimizerDescriptor beta1:usesAMSGrad beta2:timeStep epsilon:1 amsgrad:v16 timeStep:v17 isAdamW:v18];

  if (v19 && [v19 count])
  {
    computeEngine2 = [deviceCopy computeEngine];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      computeEngine3 = [deviceCopy computeEngine];
      v23 = [computeEngine3 compileOptimizerDeviceOps:v19];
    }

    else
    {
      v23 = 1;
    }

    v26.receiver = self;
    v26.super_class = MLCAdamWOptimizer;
    [(MLCOptimizer *)&v26 bindDevice:deviceCopy deviceOps:v19];
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
  [(MLCAdamWOptimizer *)self beta1];
  v7 = v6;
  [(MLCAdamWOptimizer *)self beta2];
  v9 = v8;
  [(MLCAdamWOptimizer *)self epsilon];
  v11 = v10;
  usesAMSGrad = [(MLCAdamWOptimizer *)self usesAMSGrad];
  timeStep = [(MLCAdamWOptimizer *)self timeStep];
  optimizerDescriptor = [(MLCAdamWOptimizer *)self optimizerDescriptor];
  v15 = [v3 stringWithFormat:@"%@: { beta1=%f : beta2=%f : epsilon=%f : usesAMSGrad=%d : timeStep=%lu : optimizerDescriptor=%@ }", v5, *&v7, *&v9, *&v11, usesAMSGrad, timeStep, optimizerDescriptor];

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  optimizerDescriptor = [(MLCAdamWOptimizer *)self optimizerDescriptor];
  [(MLCAdamWOptimizer *)self beta1];
  v7 = v6;
  [(MLCAdamWOptimizer *)self beta2];
  v9 = v8;
  [(MLCAdamWOptimizer *)self epsilon];
  v11 = v10;
  usesAMSGrad = [(MLCAdamWOptimizer *)self usesAMSGrad];
  timeStep = [(MLCAdamWOptimizer *)self timeStep];
  LODWORD(v14) = v7;
  LODWORD(v15) = v9;
  LODWORD(v16) = v11;
  v17 = [v4 initWithDescriptor:optimizerDescriptor beta1:usesAMSGrad beta2:timeStep epsilon:v14 usesAMSGrad:v15 timeStep:v16];

  return v17;
}

@end