@interface MPSImageSIFTDescriptor
- (MPSImageSIFTDescriptor)init;
@end

@implementation MPSImageSIFTDescriptor

- (MPSImageSIFTDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MPSImageSIFTDescriptor;
  result = [(MPSImageSIFTDescriptor *)&v3 init];
  if (result)
  {
    result->_sigma = 0.8;
    *&result->_layersPerOctave = xmmword_239988E00;
    result->_upscale = 0;
    result->_contrastThreshold = 0.06;
    result->_edgeThreshold = 10;
    result->_initialSigma = 0.5;
    result->_imageBoundary = 5;
    *&result->_orientationRadius = 0x3FC0000040900000;
    result->_orientationBins = 36;
    result->_orientationThreshold = 0.8;
    result->_maximumKeyPoints = 5000;
  }

  return result;
}

@end