@interface MPSLSTMDescriptor
+ (MPSLSTMDescriptor)createLSTMDescriptorWithInputFeatureChannels:(NSUInteger)inputFeatureChannels outputFeatureChannels:(NSUInteger)outputFeatureChannels;
- (MPSLSTMDescriptor)init;
- (MPSLSTMDescriptor)initWithInputFeatureChannels:(unint64_t)channels outputFeatureChannels:(unint64_t)featureChannels;
- (void)dealloc;
@end

@implementation MPSLSTMDescriptor

+ (MPSLSTMDescriptor)createLSTMDescriptorWithInputFeatureChannels:(NSUInteger)inputFeatureChannels outputFeatureChannels:(NSUInteger)outputFeatureChannels
{
  v6 = [self alloc];
  v12 = objc_msgSend_initWithInputFeatureChannels_outputFeatureChannels_(v6, v7, inputFeatureChannels, outputFeatureChannels, v8, v9, v10, v11);

  return v12;
}

- (MPSLSTMDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MPSLSTMDescriptor;
  result = [(MPSRNNDescriptor *)&v3 init];
  if (result)
  {
    result->_memoryWeightsAreDiagonal = 0;
    result->_inputGateInputWeights = 0;
    result->_inputGateRecurrentWeights = 0;
    result->_inputGateMemoryWeights = 0;
    result->_forgetGateInputWeights = 0;
    result->_forgetGateRecurrentWeights = 0;
    result->_forgetGateMemoryWeights = 0;
    result->_outputGateInputWeights = 0;
    result->_outputGateRecurrentWeights = 0;
    result->_outputGateMemoryWeights = 0;
    result->_cellGateInputWeights = 0;
    result->_cellGateRecurrentWeights = 0;
    result->_cellGateMemoryWeights = 0;
    result->_cellToOutputNeuronType = 5;
    result->_cellToOutputNeuronParamA = 1.0;
    result->_cellToOutputNeuronParamB = 1.0;
    result->_cellToOutputNeuronParamC = 1.0;
    result->_cellClipThreshold = -1.0;
    result->_coupleForgetGateToInputGate = 0;
  }

  return result;
}

- (MPSLSTMDescriptor)initWithInputFeatureChannels:(unint64_t)channels outputFeatureChannels:(unint64_t)featureChannels
{
  v10 = objc_msgSend_init(self, a2, channels, featureChannels, v4, v5, v6, v7);
  v11 = v10;
  if (v10)
  {
    v14.receiver = v10;
    v14.super_class = MPSLSTMDescriptor;
    [(MPSRNNDescriptor *)&v14 setInputFeatureChannels:channels];
    v13.receiver = v11;
    v13.super_class = MPSLSTMDescriptor;
    [(MPSRNNDescriptor *)&v13 setOutputFeatureChannels:featureChannels];
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSLSTMDescriptor;
  [(MPSRNNDescriptor *)&v3 dealloc];
}

@end