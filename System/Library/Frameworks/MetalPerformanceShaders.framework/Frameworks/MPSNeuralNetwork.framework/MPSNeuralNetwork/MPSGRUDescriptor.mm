@interface MPSGRUDescriptor
+ (MPSGRUDescriptor)createGRUDescriptorWithInputFeatureChannels:(NSUInteger)inputFeatureChannels outputFeatureChannels:(NSUInteger)outputFeatureChannels;
- (MPSGRUDescriptor)init;
- (MPSGRUDescriptor)initWithInputFeatureChannels:(unint64_t)channels outputFeatureChannels:(unint64_t)featureChannels;
- (void)dealloc;
@end

@implementation MPSGRUDescriptor

+ (MPSGRUDescriptor)createGRUDescriptorWithInputFeatureChannels:(NSUInteger)inputFeatureChannels outputFeatureChannels:(NSUInteger)outputFeatureChannels
{
  v6 = [self alloc];
  v12 = objc_msgSend_initWithInputFeatureChannels_outputFeatureChannels_(v6, v7, inputFeatureChannels, outputFeatureChannels, v8, v9, v10, v11);

  return v12;
}

- (MPSGRUDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MPSGRUDescriptor;
  result = [(MPSRNNDescriptor *)&v3 init];
  if (result)
  {
    result->_inputGateInputWeights = 0;
    result->_inputGateRecurrentWeights = 0;
    result->_recurrentGateInputWeights = 0;
    result->_recurrentGateRecurrentWeights = 0;
    result->_outputGateInputWeights = 0;
    result->_outputGateInputGateWeights = 0;
    result->_outputGateRecurrentWeights = 0;
    result->_gatePnormValue = 1.0;
    result->_flipOutputGates = 0;
  }

  return result;
}

- (MPSGRUDescriptor)initWithInputFeatureChannels:(unint64_t)channels outputFeatureChannels:(unint64_t)featureChannels
{
  v10 = objc_msgSend_init(self, a2, channels, featureChannels, v4, v5, v6, v7);
  v11 = v10;
  if (v10)
  {
    v14.receiver = v10;
    v14.super_class = MPSGRUDescriptor;
    [(MPSRNNDescriptor *)&v14 setInputFeatureChannels:channels];
    v13.receiver = v11;
    v13.super_class = MPSGRUDescriptor;
    [(MPSRNNDescriptor *)&v13 setOutputFeatureChannels:featureChannels];
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSGRUDescriptor;
  [(MPSRNNDescriptor *)&v3 dealloc];
}

@end