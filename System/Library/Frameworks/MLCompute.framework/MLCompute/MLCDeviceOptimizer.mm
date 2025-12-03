@interface MLCDeviceOptimizer
+ (MLCDeviceOptimizer)deviceOptimizerWithKernel:(id)kernel;
- (MLCDeviceOptimizer)initWithFunction:(unsigned int)function optimizerAlgFields:(id)fields accumulatorBufferCount:(unint64_t)count;
- (MLCDeviceOptimizer)initWithKernel:(id)kernel;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MLCDeviceOptimizer

+ (MLCDeviceOptimizer)deviceOptimizerWithKernel:(id)kernel
{
  kernelCopy = kernel;
  v5 = [[self alloc] initWithKernel:kernelCopy];

  return v5;
}

- (MLCDeviceOptimizer)initWithKernel:(id)kernel
{
  kernelCopy = kernel;
  v13.receiver = self;
  v13.super_class = MLCDeviceOptimizer;
  v6 = [(MLCDeviceOptimizer *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_kernel, kernel);
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

- (MLCDeviceOptimizer)initWithFunction:(unsigned int)function optimizerAlgFields:(id)fields accumulatorBufferCount:(unint64_t)count
{
  fieldsCopy = fields;
  v13.receiver = self;
  v13.super_class = MLCDeviceOptimizer;
  v10 = [(MLCDeviceOptimizer *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_function = function;
    objc_storeStrong(&v10->_optimizerAlgFields, fields);
    v11->_accumulatorBufferCount = count;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  kernel = [(MLCDeviceOptimizer *)self kernel];
  v7 = [v3 stringWithFormat:@"%@: { kernel=%@ }", v5, kernel];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  kernel = [(MLCDeviceOptimizer *)self kernel];
  v6 = [v4 initWithKernel:kernel];

  return v6;
}

@end