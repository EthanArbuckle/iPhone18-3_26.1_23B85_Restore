@interface MPSPluginCNNConvolutionDescriptor
- (MPSPluginCNNConvolutionDescriptor)initWithKernelWidth:(unint64_t)a3 kernelHeight:(unint64_t)a4 inputFeatureChannels:(unint64_t)a5 outputFeatureChannels:(unint64_t)a6 strideInPixelsX:(unint64_t)a7 strideInPixelsY:(unint64_t)a8 groups:(unint64_t)a9 dilationRateX:(unint64_t)a10 dilationRateY:(unint64_t)a11 channelMultiplier:(unint64_t)a12 subPixelScaleFactor:(unint64_t)a13 isFullyConnected:(BOOL)a14 isConvolutionTranspose:(BOOL)a15 fusedNeuronDescriptor:(id)a16;
- (void)dealloc;
@end

@implementation MPSPluginCNNConvolutionDescriptor

- (MPSPluginCNNConvolutionDescriptor)initWithKernelWidth:(unint64_t)a3 kernelHeight:(unint64_t)a4 inputFeatureChannels:(unint64_t)a5 outputFeatureChannels:(unint64_t)a6 strideInPixelsX:(unint64_t)a7 strideInPixelsY:(unint64_t)a8 groups:(unint64_t)a9 dilationRateX:(unint64_t)a10 dilationRateY:(unint64_t)a11 channelMultiplier:(unint64_t)a12 subPixelScaleFactor:(unint64_t)a13 isFullyConnected:(BOOL)a14 isConvolutionTranspose:(BOOL)a15 fusedNeuronDescriptor:(id)a16
{
  v25.receiver = self;
  v25.super_class = MPSPluginCNNConvolutionDescriptor;
  result = [(MPSPluginCNNConvolutionDescriptor *)&v25 init];
  if (result)
  {
    result->_kernelWidth = a3;
    result->_kernelHeight = a4;
    result->_inputFeatureChannels = a5;
    result->_outputFeatureChannels = a6;
    result->_strideInPixelsX = a7;
    result->_strideInPixelsY = a8;
    result->_groups = a9;
    result->_dilationRateX = a10;
    result->_dilationRateY = a11;
    result->_channelMultiplier = a12;
    result->_subPixelScaleFactor = a13;
    result->_isFullyConnected = a14;
    result->_isConvolutionTranspose = a15;
    v23 = result;
    v24 = a16;
    result = v23;
    v23->_fusedNeuronDescriptor = v24;
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