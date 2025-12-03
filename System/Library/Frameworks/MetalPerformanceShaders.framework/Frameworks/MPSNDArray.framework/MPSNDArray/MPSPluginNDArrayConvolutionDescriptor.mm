@interface MPSPluginNDArrayConvolutionDescriptor
- (MPSPluginNDArrayConvolutionDescriptor)initWithKernelSizes:(MPSPluginNDArrayConvolutionSizes *)sizes inputFeatureChannels:(unint64_t)channels outputFeatureChannels:(unint64_t)featureChannels strides:(MPSPluginNDArrayConvolutionSizes *)strides dilationRates:(MPSPluginNDArrayConvolutionSizes *)rates groups:(unint64_t)groups channelMultiplier:(unint64_t)multiplier subPixelScaleFactor:(unint64_t)self0 dataFormat:(unsigned int)self1 weightsFormat:(unsigned int)self2;
@end

@implementation MPSPluginNDArrayConvolutionDescriptor

- (MPSPluginNDArrayConvolutionDescriptor)initWithKernelSizes:(MPSPluginNDArrayConvolutionSizes *)sizes inputFeatureChannels:(unint64_t)channels outputFeatureChannels:(unint64_t)featureChannels strides:(MPSPluginNDArrayConvolutionSizes *)strides dilationRates:(MPSPluginNDArrayConvolutionSizes *)rates groups:(unint64_t)groups channelMultiplier:(unint64_t)multiplier subPixelScaleFactor:(unint64_t)self0 dataFormat:(unsigned int)self1 weightsFormat:(unsigned int)self2
{
  v22.receiver = self;
  v22.super_class = MPSPluginNDArrayConvolutionDescriptor;
  result = [(MPSPluginNDArrayConvolutionDescriptor *)&v22 init];
  if (result)
  {
    v19 = *sizes->size;
    result->_kernelSizes.size[2] = sizes->size[2];
    *result->_kernelSizes.size = v19;
    result->_inputFeatureChannels = channels;
    result->_outputFeatureChannels = featureChannels;
    v20 = *strides->size;
    result->_strides.size[2] = strides->size[2];
    *result->_strides.size = v20;
    v21 = *rates->size;
    result->_dilationRates.size[2] = rates->size[2];
    *result->_dilationRates.size = v21;
    result->_groups = groups;
    result->_channelMultiplier = multiplier;
    result->_subPixelScaleFactor = factor;
    result->_dataFormat = format;
    result->_weightsFormat = weightsFormat;
  }

  return result;
}

@end