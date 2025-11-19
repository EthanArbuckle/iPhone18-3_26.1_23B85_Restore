@interface MPSNDArrayConvolution2DDescriptor
- (MPSNDArrayConvolution2DDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MPSNDArrayConvolution2DDescriptor

- (MPSNDArrayConvolution2DDescriptor)init
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayConvolution2DDescriptor;
  result = [(MPSNDArrayConvolution2DDescriptor *)&v4 init];
  if (result)
  {
    v3 = vdupq_n_s64(1uLL);
    *&result->_kernelWidth = v3;
    *&result->_inputFeatureChannels = v3;
    *&result->_strideInPixelsX = v3;
    *&result->_groups = v3;
    result->_channelMultiplier = 0;
    *&result->_dataFormat = 0;
    result->_dilationRateInY = 1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (result)
  {
    *(result + 1) = self->_kernelWidth;
    *(result + 2) = self->_kernelHeight;
    *(result + 3) = self->_inputFeatureChannels;
    *(result + 4) = self->_outputFeatureChannels;
    *(result + 5) = self->_strideInPixelsX;
    *(result + 6) = self->_strideInPixelsY;
    *(result + 7) = self->_groups;
    *(result + 8) = self->_dilationRateInX;
    *(result + 9) = self->_dilationRateInY;
    *(result + 10) = self->_channelMultiplier;
    *(result + 11) = *&self->_dataFormat;
  }

  return result;
}

@end