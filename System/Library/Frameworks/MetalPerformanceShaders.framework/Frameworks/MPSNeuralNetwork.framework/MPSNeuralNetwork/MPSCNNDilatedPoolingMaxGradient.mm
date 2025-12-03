@interface MPSCNNDilatedPoolingMaxGradient
- (MPSCNNDilatedPoolingMaxGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNDilatedPoolingMaxGradient)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight dilationRateX:(NSUInteger)dilationRateX dilationRateY:(NSUInteger)dilationRateY strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
@end

@implementation MPSCNNDilatedPoolingMaxGradient

- (MPSCNNDilatedPoolingMaxGradient)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight dilationRateX:(NSUInteger)dilationRateX dilationRateY:(NSUInteger)dilationRateY strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY
{
  v12.receiver = self;
  v12.super_class = MPSCNNDilatedPoolingMaxGradient;
  result = [(MPSCNNPoolingGradient *)&v12 initWithDevice:device kernelWidth:kernelWidth kernelHeight:kernelHeight strideInPixelsX:strideInPixelsX strideInPixelsY:strideInPixelsY];
  if (result)
  {
    result->super.super.super._primaryDilationRateX = dilationRateX;
    result->super.super.super._primaryDilationRateY = dilationRateY;
    result->super.super.super._secondaryDilationRateX = dilationRateX;
    result->super.super.super._secondaryDilationRateY = dilationRateY;
    result->super.super.super._encode = sub_239BB2C54;
    result->super.super.super._batchEncode = sub_239BB2C60;
    result->super.super.super._checkFlags |= 0x40022u;
  }

  return result;
}

- (MPSCNNDilatedPoolingMaxGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSCNNDilatedPoolingMaxGradient;
  result = [(MPSCNNPoolingGradient *)&v5 initWithCoder:aDecoder device:device];
  if (result)
  {
    result->super.super.super._encode = sub_239BB2C54;
    result->super.super.super._batchEncode = sub_239BB2C60;
    result->super.super.super._checkFlags |= 0x40022u;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v13.receiver = self;
  v13.super_class = MPSCNNDilatedPoolingMaxGradient;
  result = [(MPSCNNPoolingGradient *)&v13 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 47) = sub_239BB2C54;
    *(result + 48) = sub_239BB2C60;
    *(result + 49) = result;
    *(result + 92) = self->super.super.super._checkFlags | 0x40022;
    v12 = result;
    objc_msgSend_setPlugin_(result, v6, 0, v7, v8, v9, v10, v11);
    return v12;
  }

  return result;
}

@end