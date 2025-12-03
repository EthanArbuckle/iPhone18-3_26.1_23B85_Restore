@interface MLCRMSPropOptimizer
+ (MLCRMSPropOptimizer)optimizerWithDescriptor:(MLCOptimizerDescriptor *)optimizerDescriptor;
- (BOOL)compileForDevice:(id)device;
- (MLCRMSPropOptimizer)initWithDescriptor:(id)descriptor momentumScale:(float)scale alpha:(float)alpha epsilon:(float)epsilon centered:(BOOL)centered;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation MLCRMSPropOptimizer

+ (MLCRMSPropOptimizer)optimizerWithDescriptor:(MLCOptimizerDescriptor *)optimizerDescriptor
{
  v4 = optimizerDescriptor;
  v5 = [self alloc];
  LODWORD(v6) = 1065185444;
  LODWORD(v7) = 841731191;
  v8 = [v5 initWithDescriptor:v4 momentumScale:0 alpha:0.0 epsilon:v6 centered:v7];

  return v8;
}

- (MLCRMSPropOptimizer)initWithDescriptor:(id)descriptor momentumScale:(float)scale alpha:(float)alpha epsilon:(float)epsilon centered:(BOOL)centered
{
  centeredCopy = centered;
  descriptorCopy = descriptor;
  v24.receiver = self;
  v24.super_class = MLCRMSPropOptimizer;
  v14 = [(MLCOptimizer *)&v24 initWithDescriptor:descriptorCopy];
  v15 = v14;
  if (v14)
  {
    v14->_momentumScale = scale;
    v14->_alpha = alpha;
    v14->_epsilon = epsilon;
    v14->_isCentered = centeredCopy;
    objc_storeStrong(&v14->_optimizerDescriptor, descriptor);
    v23.receiver = v15;
    v23.super_class = MLCRMSPropOptimizer;
    [(MLCOptimizer *)&v23 setNumOptimizerDataBuffers:1];
    if (centeredCopy)
    {
      v22.receiver = v15;
      v22.super_class = MLCRMSPropOptimizer;
      numOptimizerDataBuffers = [(MLCOptimizer *)&v22 numOptimizerDataBuffers];
      v21.receiver = v15;
      v21.super_class = MLCRMSPropOptimizer;
      [(MLCOptimizer *)&v21 setNumOptimizerDataBuffers:numOptimizerDataBuffers + 1];
    }

    if (scale > 0.0)
    {
      v20.receiver = v15;
      v20.super_class = MLCRMSPropOptimizer;
      numOptimizerDataBuffers2 = [(MLCOptimizer *)&v20 numOptimizerDataBuffers];
      v19.receiver = v15;
      v19.super_class = MLCRMSPropOptimizer;
      [(MLCOptimizer *)&v19 setNumOptimizerDataBuffers:numOptimizerDataBuffers2 + 1];
    }
  }

  return v15;
}

- (BOOL)compileForDevice:(id)device
{
  deviceCopy = device;
  computeEngine = [deviceCopy computeEngine];
  optimizerDescriptor = [(MLCRMSPropOptimizer *)self optimizerDescriptor];
  [(MLCRMSPropOptimizer *)self momentumScale];
  v9 = v8;
  [(MLCRMSPropOptimizer *)self alpha];
  v11 = v10;
  [(MLCRMSPropOptimizer *)self epsilon];
  v13 = v12;
  isCentered = [(MLCRMSPropOptimizer *)self isCentered];
  LODWORD(v15) = v9;
  LODWORD(v16) = v11;
  LODWORD(v17) = v13;
  v18 = [computeEngine optimizerRMSPropWithDescriptor:optimizerDescriptor momentumScale:isCentered alpha:v15 epsilon:v16 centered:v17];

  if (v18 && [v18 count])
  {
    computeEngine2 = [deviceCopy computeEngine];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      computeEngine3 = [deviceCopy computeEngine];
      v22 = [computeEngine3 compileOptimizerDeviceOps:v18];
    }

    else
    {
      v22 = 1;
    }

    v25.receiver = self;
    v25.super_class = MLCRMSPropOptimizer;
    [(MLCOptimizer *)&v25 bindDevice:deviceCopy deviceOps:v18];
  }

  else
  {
    v23 = +[MLCLog framework];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MLCPoolingLayer compileForDevice:a2 sourceTensors:v18 resultTensor:v23];
    }

    v22 = 0;
  }

  return v22;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [(MLCRMSPropOptimizer *)self momentumScale];
  v7 = v6;
  [(MLCRMSPropOptimizer *)self alpha];
  v9 = v8;
  [(MLCRMSPropOptimizer *)self epsilon];
  v11 = v10;
  isCentered = [(MLCRMSPropOptimizer *)self isCentered];
  optimizerDescriptor = [(MLCRMSPropOptimizer *)self optimizerDescriptor];
  v14 = [v3 stringWithFormat:@"%@: { momentumScale=%f : alpha=%f : epsilon=%f : centered=%d : optimizerDescriptor=%@ }", v5, *&v7, *&v9, *&v11, isCentered, optimizerDescriptor];

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  optimizerDescriptor = [(MLCRMSPropOptimizer *)self optimizerDescriptor];
  [(MLCRMSPropOptimizer *)self momentumScale];
  v7 = v6;
  [(MLCRMSPropOptimizer *)self alpha];
  v9 = v8;
  [(MLCRMSPropOptimizer *)self epsilon];
  v11 = v10;
  isCentered = [(MLCRMSPropOptimizer *)self isCentered];
  LODWORD(v13) = v7;
  LODWORD(v14) = v9;
  LODWORD(v15) = v11;
  v16 = [v4 initWithDescriptor:optimizerDescriptor momentumScale:isCentered alpha:v13 epsilon:v14 centered:v15];

  return v16;
}

@end