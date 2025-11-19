@interface MLCRNNGPUDeviceOps
+ (id)deviceOpsWithForwardKernel:(id)a3 gradientKernel:(id)a4;
- (MLCRNNGPUDeviceOps)initWithForwardKernel:(id)a3 gradientKernel:(id)a4;
@end

@implementation MLCRNNGPUDeviceOps

+ (id)deviceOpsWithForwardKernel:(id)a3 gradientKernel:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithForwardKernel:v7 gradientKernel:v6];

  return v8;
}

- (MLCRNNGPUDeviceOps)initWithForwardKernel:(id)a3 gradientKernel:(id)a4
{
  v48.receiver = self;
  v48.super_class = MLCRNNGPUDeviceOps;
  v4 = [(MLCGPUDeviceOps *)&v48 initWithForwardKernel:a3 gradientKernel:a4 secondaryGradientKernel:0 forwardStatistics:0 gradientStatistics:0];
  if (v4)
  {
    v5 = MEMORY[0x277CBEBF8];
    v6 = [MEMORY[0x277CBEBF8] mutableCopy];
    rnnTrainableWeights = v4->_rnnTrainableWeights;
    v4->_rnnTrainableWeights = v6;

    v8 = [v5 mutableCopy];
    rnnTrainableWeightGradients = v4->_rnnTrainableWeightGradients;
    v4->_rnnTrainableWeightGradients = v8;

    v10 = [v5 mutableCopy];
    rnnTrainableStates = v4->_rnnTrainableStates;
    v4->_rnnTrainableStates = v10;

    v12 = [v5 mutableCopy];
    rnnBuffers = v4->_rnnBuffers;
    v4->_rnnBuffers = v12;

    v14 = [v5 mutableCopy];
    rnnExportedWeightMatrices = v4->_rnnExportedWeightMatrices;
    v4->_rnnExportedWeightMatrices = v14;

    v16 = [v5 mutableCopy];
    rnnExportedBiasTerms = v4->_rnnExportedBiasTerms;
    v4->_rnnExportedBiasTerms = v16;

    v18 = [v5 mutableCopy];
    rnnStackedLayersResults = v4->_rnnStackedLayersResults;
    v4->_rnnStackedLayersResults = v18;

    v20 = [v5 mutableCopy];
    rnnStackedLayersBufferResults = v4->_rnnStackedLayersBufferResults;
    v4->_rnnStackedLayersBufferResults = v20;

    v22 = [v5 mutableCopy];
    rnnMomentumMatrices = v4->_rnnMomentumMatrices;
    v4->_rnnMomentumMatrices = v22;

    v24 = [v5 mutableCopy];
    rnnVelocityMatrices = v4->_rnnVelocityMatrices;
    v4->_rnnVelocityMatrices = v24;

    v26 = [v5 mutableCopy];
    rnnCenterWeightMatrices = v4->_rnnCenterWeightMatrices;
    v4->_rnnCenterWeightMatrices = v26;

    v28 = [v5 mutableCopy];
    rnnExportedInputWeightGradientMatrices = v4->_rnnExportedInputWeightGradientMatrices;
    v4->_rnnExportedInputWeightGradientMatrices = v28;

    v30 = [v5 mutableCopy];
    rnnExportedHiddenWeightGradientMatrices = v4->_rnnExportedHiddenWeightGradientMatrices;
    v4->_rnnExportedHiddenWeightGradientMatrices = v30;

    v32 = [v5 mutableCopy];
    rnnExportedBiasGradientMatrices = v4->_rnnExportedBiasGradientMatrices;
    v4->_rnnExportedBiasGradientMatrices = v32;

    v4->_isBidirectional = 0;
    v4->_batchFirst = 1;
    v4->_returnsSequences = 1;
    v4->_hiddenSize = 0;
    v4->_inputSize = 0;
    v4->_numLayers = 0;
    forwardTimeGradientResult = v4->_forwardTimeGradientResult;
    v4->_forwardTimeGradientResult = 0;

    reverseTimeGradientResult = v4->_reverseTimeGradientResult;
    v4->_reverseTimeGradientResult = 0;

    biDirectionalGradientResult = v4->_biDirectionalGradientResult;
    v4->_biDirectionalGradientResult = 0;

    biDirectionalSumKernel = v4->_biDirectionalSumKernel;
    v4->_biDirectionalSumKernel = 0;

    v4->_lstmDropout = 0.0;
    v38 = [v5 mutableCopy];
    lstmDropoutForwardKernel = v4->_lstmDropoutForwardKernel;
    v4->_lstmDropoutForwardKernel = v38;

    v40 = [v5 mutableCopy];
    lstmDropoutGradientKernel = v4->_lstmDropoutGradientKernel;
    v4->_lstmDropoutGradientKernel = v40;

    v42 = [v5 mutableCopy];
    lstmDropoutSource = v4->_lstmDropoutSource;
    v4->_lstmDropoutSource = v42;

    v44 = [v5 mutableCopy];
    lstmDropoutState = v4->_lstmDropoutState;
    v4->_lstmDropoutState = v44;

    lstmMultiGPUChildOps = v4->_lstmMultiGPUChildOps;
    v4->_lstmMultiGPUChildOps = 0;
  }

  return v4;
}

@end