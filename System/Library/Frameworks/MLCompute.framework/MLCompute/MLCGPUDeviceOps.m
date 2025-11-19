@interface MLCGPUDeviceOps
+ (id)deviceOps;
+ (id)deviceOpsWithForwardKernel:(id)a3;
+ (id)deviceOpsWithForwardKernel:(id)a3 gradientKernel:(id)a4;
+ (id)deviceOpsWithForwardKernel:(id)a3 gradientKernel:(id)a4 secondaryGradientKernel:(id)a5;
+ (id)deviceOpsWithForwardKernel:(id)a3 gradientKernel:(id)a4 secondaryGradientKernel:(id)a5 forwardStatistics:(id)a6 gradientStatistics:(id)a7;
- (MLCGPUDeviceOps)initWithForwardKernel:(id)a3 gradientKernel:(id)a4 secondaryGradientKernel:(id)a5 forwardStatistics:(id)a6 gradientStatistics:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation MLCGPUDeviceOps

+ (id)deviceOps
{
  v2 = [[a1 alloc] initWithForwardKernel:0 gradientKernel:0];

  return v2;
}

+ (id)deviceOpsWithForwardKernel:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithForwardKernel:v4 gradientKernel:0];

  return v5;
}

+ (id)deviceOpsWithForwardKernel:(id)a3 gradientKernel:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithForwardKernel:v7 gradientKernel:v6];

  return v8;
}

+ (id)deviceOpsWithForwardKernel:(id)a3 gradientKernel:(id)a4 secondaryGradientKernel:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithForwardKernel:v10 gradientKernel:v9 secondaryGradientKernel:v8 forwardStatistics:0 gradientStatistics:0];

  return v11;
}

+ (id)deviceOpsWithForwardKernel:(id)a3 gradientKernel:(id)a4 secondaryGradientKernel:(id)a5 forwardStatistics:(id)a6 gradientStatistics:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [[a1 alloc] initWithForwardKernel:v16 gradientKernel:v15 secondaryGradientKernel:v14 forwardStatistics:v13 gradientStatistics:v12];

  return v17;
}

- (MLCGPUDeviceOps)initWithForwardKernel:(id)a3 gradientKernel:(id)a4 secondaryGradientKernel:(id)a5 forwardStatistics:(id)a6 gradientStatistics:(id)a7
{
  v26 = a3;
  v25 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v27.receiver = self;
  v27.super_class = MLCGPUDeviceOps;
  v16 = [(MLCDeviceOps *)&v27 initWithSource:0 secondarySource:0 result:0 batchSize:1];
  v17 = v16;
  if (v16)
  {
    *&v16->_isMPSKernel = 1;
    v16->_metalKernelType = 0;
    objc_storeStrong(&v16->_forwardKernel, a3);
    objc_storeStrong(&v17->_gradientKernel, a4);
    objc_storeStrong(&v17->_secondaryGradientKernel, a5);
    lossInitialGradientKernel = v17->_lossInitialGradientKernel;
    v17->_lossInitialGradientKernel = 0;

    combinedForwardAndGradientLossKernel = v17->_combinedForwardAndGradientLossKernel;
    v17->_combinedForwardAndGradientLossKernel = 0;

    gradientState = v17->_gradientState;
    v17->_gradientState = 0;

    movingState = v17->_movingState;
    v17->_movingState = 0;

    exportableState = v17->_exportableState;
    v17->_exportableState = 0;

    objc_storeStrong(&v17->_forwardStatisticsKernel, a6);
    objc_storeStrong(&v17->_gradientStatisticsKernel, a7);
    neuronDescriptor = v17->_neuronDescriptor;
    v17->_neuronDescriptor = 0;

    v17->_computeWeightsAndBiasOnly = 0;
    v17->_useSourceGradientDeviceMemoryForResultGradientTensor = 0;
    v17->_useSourceGradientDeviceMemoryForSecondaryResultGradientTensor = 0;
    v17->_recomputeResultTensor = 0;
    v17->_temporaryHeapIndex = 0;
  }

  return v17;
}

- (id)description
{
  v16 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v15 = NSStringFromClass(v3);
  v4 = [(MLCGPUDeviceOps *)self forwardKernel];
  v5 = [(MLCGPUDeviceOps *)self gradientKernel];
  v6 = [(MLCGPUDeviceOps *)self secondaryGradientKernel];
  v7 = [(MLCGPUDeviceOps *)self lossInitialGradientKernel];
  v8 = [(MLCGPUDeviceOps *)self gradientState];
  v9 = [(MLCDeviceOps *)self source];
  v10 = [(MLCDeviceOps *)self secondarySource];
  v11 = [(MLCGPUDeviceOps *)self forwardStatisticsKernel];
  v12 = [(MLCGPUDeviceOps *)self gradientStatisticsKernel];
  v13 = [v16 stringWithFormat:@"%@: { forwardKernel=%@ : gradientKernel=%@ : secondaryGradientKernel= %@ : lossInitialGradientKernel=%@ : gradientState=%@ : source=%@ : secondarySource=%@ : forwardStatisticsKernel=%@ : gradientStatisticsKernel=%@ }", v15, v4, v5, v6, v7, v8, v9, v10, v11, v12];

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MLCGPUDeviceOps *)self forwardKernel];
  v6 = [(MLCGPUDeviceOps *)self gradientKernel];
  v7 = [v4 initWithForwardKernel:v5 gradientKernel:v6];

  return v7;
}

@end