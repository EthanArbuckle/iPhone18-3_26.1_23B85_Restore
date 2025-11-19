@interface MPSRNNDescriptor
- (MPSRNNDescriptor)init;
- (void)dealloc;
@end

@implementation MPSRNNDescriptor

- (MPSRNNDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MPSRNNDescriptor;
  result = [(MPSRNNDescriptor *)&v3 init];
  if (result)
  {
    *&result->_inputFeatureChannels = vdupq_n_s64(1uLL);
    result->_useFloat32Weights = 0;
    result->_internalKernelSelector = 0;
    result->_outputTransform = 0;
    result->_recurrentOutputTransform = 0;
    result->_inputTransform = 0;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSRNNDescriptor;
  [(MPSRNNDescriptor *)&v3 dealloc];
}

@end