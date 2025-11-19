@interface MPSNDArrayDepthwiseConvolution2DDescriptor
- (MPSNDArrayDepthwiseConvolution2DDescriptor)init;
@end

@implementation MPSNDArrayDepthwiseConvolution2DDescriptor

- (MPSNDArrayDepthwiseConvolution2DDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayDepthwiseConvolution2DDescriptor;
  result = [(MPSNDArrayConvolution2DDescriptor *)&v3 init];
  if (result)
  {
    result->super._channelMultiplier = 1;
  }

  return result;
}

@end