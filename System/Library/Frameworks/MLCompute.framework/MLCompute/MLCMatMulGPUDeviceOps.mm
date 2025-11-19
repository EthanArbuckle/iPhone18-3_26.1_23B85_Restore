@interface MLCMatMulGPUDeviceOps
+ (id)deviceOps;
+ (id)deviceOpsWithForwardKernel:(id)a3 gradientKernel:(id)a4 secondaryGradientKernel:(id)a5;
- (MLCMatMulGPUDeviceOps)initWithForwardKernel:(id)a3 gradientKernel:(id)a4 secondaryGradientKernel:(id)a5;
@end

@implementation MLCMatMulGPUDeviceOps

+ (id)deviceOps
{
  v2 = [[a1 alloc] initWithForwardKernel:0 gradientKernel:0 secondaryGradientKernel:0];

  return v2;
}

+ (id)deviceOpsWithForwardKernel:(id)a3 gradientKernel:(id)a4 secondaryGradientKernel:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithForwardKernel:v10 gradientKernel:v9 secondaryGradientKernel:v8];

  return v11;
}

- (MLCMatMulGPUDeviceOps)initWithForwardKernel:(id)a3 gradientKernel:(id)a4 secondaryGradientKernel:(id)a5
{
  v29.receiver = self;
  v29.super_class = MLCMatMulGPUDeviceOps;
  v5 = [(MLCGPUDeviceOps *)&v29 initWithForwardKernel:a3 gradientKernel:a4 secondaryGradientKernel:a5 forwardStatistics:0 gradientStatistics:0];
  v6 = v5;
  if (v5)
  {
    matmulKernel = v5->_matmulKernel;
    v5->_matmulKernel = 0;

    reduceSumKernel = v6->_reduceSumKernel;
    v6->_reduceSumKernel = 0;

    v9 = MEMORY[0x277CBEBF8];
    v10 = [MEMORY[0x277CBEBF8] mutableCopy];
    matrixDescs = v6->_matrixDescs;
    v6->_matrixDescs = v10;

    v12 = [v9 mutableCopy];
    forwardMatricesOrNDArrays = v6->_forwardMatricesOrNDArrays;
    v6->_forwardMatricesOrNDArrays = v12;

    v14 = [v9 mutableCopy];
    gradientMatricesOrNDArrays = v6->_gradientMatricesOrNDArrays;
    v6->_gradientMatricesOrNDArrays = v14;

    v16 = [v9 copy];
    shapes = v6->_shapes;
    v6->_shapes = v16;

    v18 = [v9 copy];
    transposeLeft = v6->_transposeLeft;
    v6->_transposeLeft = v18;

    v20 = [v9 copy];
    transposeRight = v6->_transposeRight;
    v6->_transposeRight = v20;

    v22 = [v9 copy];
    gradientLeftRightMatrixSelectionFlags = v6->_gradientLeftRightMatrixSelectionFlags;
    v6->_gradientLeftRightMatrixSelectionFlags = v22;

    v24 = [v9 copy];
    broadcastingFlags = v6->_broadcastingFlags;
    v6->_broadcastingFlags = v24;

    v26 = [v9 mutableCopy];
    reductionShapes = v6->_reductionShapes;
    v6->_reductionShapes = v26;
  }

  return v6;
}

@end