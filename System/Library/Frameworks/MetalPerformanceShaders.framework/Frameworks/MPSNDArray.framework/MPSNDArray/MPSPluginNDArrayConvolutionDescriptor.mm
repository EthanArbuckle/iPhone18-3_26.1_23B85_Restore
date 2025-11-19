@interface MPSPluginNDArrayConvolutionDescriptor
- (MPSPluginNDArrayConvolutionDescriptor)initWithKernelSizes:(MPSPluginNDArrayConvolutionSizes *)a3 inputFeatureChannels:(unint64_t)a4 outputFeatureChannels:(unint64_t)a5 strides:(MPSPluginNDArrayConvolutionSizes *)a6 dilationRates:(MPSPluginNDArrayConvolutionSizes *)a7 groups:(unint64_t)a8 channelMultiplier:(unint64_t)a9 subPixelScaleFactor:(unint64_t)a10 dataFormat:(unsigned int)a11 weightsFormat:(unsigned int)a12;
@end

@implementation MPSPluginNDArrayConvolutionDescriptor

- (MPSPluginNDArrayConvolutionDescriptor)initWithKernelSizes:(MPSPluginNDArrayConvolutionSizes *)a3 inputFeatureChannels:(unint64_t)a4 outputFeatureChannels:(unint64_t)a5 strides:(MPSPluginNDArrayConvolutionSizes *)a6 dilationRates:(MPSPluginNDArrayConvolutionSizes *)a7 groups:(unint64_t)a8 channelMultiplier:(unint64_t)a9 subPixelScaleFactor:(unint64_t)a10 dataFormat:(unsigned int)a11 weightsFormat:(unsigned int)a12
{
  v22.receiver = self;
  v22.super_class = MPSPluginNDArrayConvolutionDescriptor;
  result = [(MPSPluginNDArrayConvolutionDescriptor *)&v22 init];
  if (result)
  {
    v19 = *a3->size;
    result->_kernelSizes.size[2] = a3->size[2];
    *result->_kernelSizes.size = v19;
    result->_inputFeatureChannels = a4;
    result->_outputFeatureChannels = a5;
    v20 = *a6->size;
    result->_strides.size[2] = a6->size[2];
    *result->_strides.size = v20;
    v21 = *a7->size;
    result->_dilationRates.size[2] = a7->size[2];
    *result->_dilationRates.size = v21;
    result->_groups = a8;
    result->_channelMultiplier = a9;
    result->_subPixelScaleFactor = a10;
    result->_dataFormat = a11;
    result->_weightsFormat = a12;
  }

  return result;
}

@end