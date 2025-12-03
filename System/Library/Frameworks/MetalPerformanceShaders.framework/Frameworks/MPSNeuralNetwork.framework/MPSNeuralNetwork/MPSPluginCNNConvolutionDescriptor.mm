@interface MPSPluginCNNConvolutionDescriptor
- (MPSPluginCNNConvolutionDescriptor)initWithKernelWidth:(unint64_t)width kernelHeight:(unint64_t)height inputFeatureChannels:(unint64_t)channels outputFeatureChannels:(unint64_t)featureChannels strideInPixelsX:(unint64_t)x strideInPixelsY:(unint64_t)y groups:(unint64_t)groups dilationRateX:(unint64_t)self0 dilationRateY:(unint64_t)self1 channelMultiplier:(unint64_t)self2 subPixelScaleFactor:(unint64_t)self3 isFullyConnected:(BOOL)self4 isConvolutionTranspose:(BOOL)self5 fusedNeuronDescriptor:(id)self6;
- (void)dealloc;
@end

@implementation MPSPluginCNNConvolutionDescriptor

- (MPSPluginCNNConvolutionDescriptor)initWithKernelWidth:(unint64_t)width kernelHeight:(unint64_t)height inputFeatureChannels:(unint64_t)channels outputFeatureChannels:(unint64_t)featureChannels strideInPixelsX:(unint64_t)x strideInPixelsY:(unint64_t)y groups:(unint64_t)groups dilationRateX:(unint64_t)self0 dilationRateY:(unint64_t)self1 channelMultiplier:(unint64_t)self2 subPixelScaleFactor:(unint64_t)self3 isFullyConnected:(BOOL)self4 isConvolutionTranspose:(BOOL)self5 fusedNeuronDescriptor:(id)self6
{
  v25.receiver = self;
  v25.super_class = MPSPluginCNNConvolutionDescriptor;
  result = [(MPSPluginCNNConvolutionDescriptor *)&v25 init];
  if (result)
  {
    result->_kernelWidth = width;
    result->_kernelHeight = height;
    result->_inputFeatureChannels = channels;
    result->_outputFeatureChannels = featureChannels;
    result->_strideInPixelsX = x;
    result->_strideInPixelsY = y;
    result->_groups = groups;
    result->_dilationRateX = rateX;
    result->_dilationRateY = rateY;
    result->_channelMultiplier = multiplier;
    result->_subPixelScaleFactor = factor;
    result->_isFullyConnected = connected;
    result->_isConvolutionTranspose = transpose;
    v23 = result;
    descriptorCopy = descriptor;
    result = v23;
    v23->_fusedNeuronDescriptor = descriptorCopy;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSPluginCNNConvolutionDescriptor;
  [(MPSPluginCNNConvolutionDescriptor *)&v3 dealloc];
}

@end