@interface MLCRMSPropOptimizer
+ (MLCRMSPropOptimizer)optimizerWithDescriptor:(MLCOptimizerDescriptor *)optimizerDescriptor;
- (BOOL)compileForDevice:(id)a3;
- (MLCRMSPropOptimizer)initWithDescriptor:(id)a3 momentumScale:(float)a4 alpha:(float)a5 epsilon:(float)a6 centered:(BOOL)a7;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MLCRMSPropOptimizer

+ (MLCRMSPropOptimizer)optimizerWithDescriptor:(MLCOptimizerDescriptor *)optimizerDescriptor
{
  v4 = optimizerDescriptor;
  v5 = [a1 alloc];
  LODWORD(v6) = 1065185444;
  LODWORD(v7) = 841731191;
  v8 = [v5 initWithDescriptor:v4 momentumScale:0 alpha:0.0 epsilon:v6 centered:v7];

  return v8;
}

- (MLCRMSPropOptimizer)initWithDescriptor:(id)a3 momentumScale:(float)a4 alpha:(float)a5 epsilon:(float)a6 centered:(BOOL)a7
{
  v7 = a7;
  v13 = a3;
  v24.receiver = self;
  v24.super_class = MLCRMSPropOptimizer;
  v14 = [(MLCOptimizer *)&v24 initWithDescriptor:v13];
  v15 = v14;
  if (v14)
  {
    v14->_momentumScale = a4;
    v14->_alpha = a5;
    v14->_epsilon = a6;
    v14->_isCentered = v7;
    objc_storeStrong(&v14->_optimizerDescriptor, a3);
    v23.receiver = v15;
    v23.super_class = MLCRMSPropOptimizer;
    [(MLCOptimizer *)&v23 setNumOptimizerDataBuffers:1];
    if (v7)
    {
      v22.receiver = v15;
      v22.super_class = MLCRMSPropOptimizer;
      v16 = [(MLCOptimizer *)&v22 numOptimizerDataBuffers];
      v21.receiver = v15;
      v21.super_class = MLCRMSPropOptimizer;
      [(MLCOptimizer *)&v21 setNumOptimizerDataBuffers:v16 + 1];
    }

    if (a4 > 0.0)
    {
      v20.receiver = v15;
      v20.super_class = MLCRMSPropOptimizer;
      v17 = [(MLCOptimizer *)&v20 numOptimizerDataBuffers];
      v19.receiver = v15;
      v19.super_class = MLCRMSPropOptimizer;
      [(MLCOptimizer *)&v19 setNumOptimizerDataBuffers:v17 + 1];
    }
  }

  return v15;
}

- (BOOL)compileForDevice:(id)a3
{
  v5 = a3;
  v6 = [v5 computeEngine];
  v7 = [(MLCRMSPropOptimizer *)self optimizerDescriptor];
  [(MLCRMSPropOptimizer *)self momentumScale];
  v9 = v8;
  [(MLCRMSPropOptimizer *)self alpha];
  v11 = v10;
  [(MLCRMSPropOptimizer *)self epsilon];
  v13 = v12;
  v14 = [(MLCRMSPropOptimizer *)self isCentered];
  LODWORD(v15) = v9;
  LODWORD(v16) = v11;
  LODWORD(v17) = v13;
  v18 = [v6 optimizerRMSPropWithDescriptor:v7 momentumScale:v14 alpha:v15 epsilon:v16 centered:v17];

  if (v18 && [v18 count])
  {
    v19 = [v5 computeEngine];
    v20 = objc_opt_respondsToSelector();

    if (v20)
    {
      v21 = [v5 computeEngine];
      v22 = [v21 compileOptimizerDeviceOps:v18];
    }

    else
    {
      v22 = 1;
    }

    v25.receiver = self;
    v25.super_class = MLCRMSPropOptimizer;
    [(MLCOptimizer *)&v25 bindDevice:v5 deviceOps:v18];
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
  v12 = [(MLCRMSPropOptimizer *)self isCentered];
  v13 = [(MLCRMSPropOptimizer *)self optimizerDescriptor];
  v14 = [v3 stringWithFormat:@"%@: { momentumScale=%f : alpha=%f : epsilon=%f : centered=%d : optimizerDescriptor=%@ }", v5, *&v7, *&v9, *&v11, v12, v13];

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MLCRMSPropOptimizer *)self optimizerDescriptor];
  [(MLCRMSPropOptimizer *)self momentumScale];
  v7 = v6;
  [(MLCRMSPropOptimizer *)self alpha];
  v9 = v8;
  [(MLCRMSPropOptimizer *)self epsilon];
  v11 = v10;
  v12 = [(MLCRMSPropOptimizer *)self isCentered];
  LODWORD(v13) = v7;
  LODWORD(v14) = v9;
  LODWORD(v15) = v11;
  v16 = [v4 initWithDescriptor:v5 momentumScale:v12 alpha:v13 epsilon:v14 centered:v15];

  return v16;
}

@end