@interface MPSRNNSingleGateDescriptor
+ (MPSRNNSingleGateDescriptor)createRNNSingleGateDescriptorWithInputFeatureChannels:(NSUInteger)inputFeatureChannels outputFeatureChannels:(NSUInteger)outputFeatureChannels;
- (MPSRNNSingleGateDescriptor)init;
- (MPSRNNSingleGateDescriptor)initWithInputFeatureChannels:(unint64_t)channels outputFeatureChannels:(unint64_t)featureChannels;
- (void)dealloc;
@end

@implementation MPSRNNSingleGateDescriptor

+ (MPSRNNSingleGateDescriptor)createRNNSingleGateDescriptorWithInputFeatureChannels:(NSUInteger)inputFeatureChannels outputFeatureChannels:(NSUInteger)outputFeatureChannels
{
  v6 = [self alloc];
  v12 = objc_msgSend_initWithInputFeatureChannels_outputFeatureChannels_(v6, v7, inputFeatureChannels, outputFeatureChannels, v8, v9, v10, v11);

  return v12;
}

- (MPSRNNSingleGateDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MPSRNNSingleGateDescriptor;
  result = [(MPSRNNDescriptor *)&v3 init];
  if (result)
  {
    result->_inputWeights = 0;
    result->_recurrentWeights = 0;
  }

  return result;
}

- (MPSRNNSingleGateDescriptor)initWithInputFeatureChannels:(unint64_t)channels outputFeatureChannels:(unint64_t)featureChannels
{
  v10 = objc_msgSend_init(self, a2, channels, featureChannels, v4, v5, v6, v7);
  v11 = v10;
  if (v10)
  {
    v14.receiver = v10;
    v14.super_class = MPSRNNSingleGateDescriptor;
    [(MPSRNNDescriptor *)&v14 setInputFeatureChannels:channels];
    v13.receiver = v11;
    v13.super_class = MPSRNNSingleGateDescriptor;
    [(MPSRNNDescriptor *)&v13 setOutputFeatureChannels:featureChannels];
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSRNNSingleGateDescriptor;
  [(MPSRNNDescriptor *)&v3 dealloc];
}

@end