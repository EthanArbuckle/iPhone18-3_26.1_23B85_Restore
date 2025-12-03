@interface MPSCNNPoolingMaxGradient
- (MPSCNNPoolingMaxGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNPoolingMaxGradient)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
@end

@implementation MPSCNNPoolingMaxGradient

- (MPSCNNPoolingMaxGradient)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY
{
  v8.receiver = self;
  v8.super_class = MPSCNNPoolingMaxGradient;
  result = [(MPSCNNPoolingGradient *)&v8 initWithDevice:device kernelWidth:kernelWidth kernelHeight:kernelHeight strideInPixelsX:strideInPixelsX strideInPixelsY:strideInPixelsY];
  if (result)
  {
    result->super.super.super._encode = sub_239BB2354;
    result->super.super.super._batchEncode = sub_239BB2360;
    result->super.super.super._checkFlags |= 0x22u;
  }

  return result;
}

- (MPSCNNPoolingMaxGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSCNNPoolingMaxGradient;
  result = [(MPSCNNPoolingGradient *)&v5 initWithCoder:aDecoder device:device];
  if (result)
  {
    result->super.super.super._encode = sub_239BB2354;
    result->super.super.super._batchEncode = sub_239BB2360;
    result->super.super.super._checkFlags |= 0x22u;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v13.receiver = self;
  v13.super_class = MPSCNNPoolingMaxGradient;
  result = [(MPSCNNPoolingGradient *)&v13 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 47) = sub_239BB2354;
    *(result + 48) = sub_239BB2360;
    *(result + 49) = result;
    *(result + 92) = self->super.super.super._checkFlags | 0x22;
    v12 = result;
    objc_msgSend_setPlugin_(result, v6, 0, v7, v8, v9, v10, v11);
    return v12;
  }

  return result;
}

@end