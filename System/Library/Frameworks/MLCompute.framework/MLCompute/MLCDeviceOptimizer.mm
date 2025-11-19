@interface MLCDeviceOptimizer
+ (MLCDeviceOptimizer)deviceOptimizerWithKernel:(id)a3;
- (MLCDeviceOptimizer)initWithFunction:(unsigned int)a3 optimizerAlgFields:(id)a4 accumulatorBufferCount:(unint64_t)a5;
- (MLCDeviceOptimizer)initWithKernel:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MLCDeviceOptimizer

+ (MLCDeviceOptimizer)deviceOptimizerWithKernel:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithKernel:v4];

  return v5;
}

- (MLCDeviceOptimizer)initWithKernel:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = MLCDeviceOptimizer;
  v6 = [(MLCDeviceOptimizer *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_kernel, a3);
    descriptor = v7->_descriptor;
    v7->_descriptor = 0;

    optimizerAlgFields = v7->_optimizerAlgFields;
    v7->_optimizerAlgFields = 0;

    v7->_accumulatorBufferCount = 0;
    v7->_timeStep = 0;
    computeL2NormKernel = v7->_computeL2NormKernel;
    v7->_computeL2NormKernel = 0;

    sumL2NormKernel = v7->_sumL2NormKernel;
    v7->_sumL2NormKernel = 0;
  }

  return v7;
}

- (MLCDeviceOptimizer)initWithFunction:(unsigned int)a3 optimizerAlgFields:(id)a4 accumulatorBufferCount:(unint64_t)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = MLCDeviceOptimizer;
  v10 = [(MLCDeviceOptimizer *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_function = a3;
    objc_storeStrong(&v10->_optimizerAlgFields, a4);
    v11->_accumulatorBufferCount = a5;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MLCDeviceOptimizer *)self kernel];
  v7 = [v3 stringWithFormat:@"%@: { kernel=%@ }", v5, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MLCDeviceOptimizer *)self kernel];
  v6 = [v4 initWithKernel:v5];

  return v6;
}

@end