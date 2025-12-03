@interface MPSCNNPoolingL2NormGradient
- (MPSCNNPoolingL2NormGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSCNNPoolingL2NormGradient)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSCNNPoolingL2NormGradient

- (MPSCNNPoolingL2NormGradient)initWithDevice:(id)device kernelWidth:(NSUInteger)kernelWidth kernelHeight:(NSUInteger)kernelHeight strideInPixelsX:(NSUInteger)strideInPixelsX strideInPixelsY:(NSUInteger)strideInPixelsY
{
  v15.receiver = self;
  v15.super_class = MPSCNNPoolingL2NormGradient;
  result = [(MPSCNNPoolingGradient *)&v15 initWithDevice:device kernelWidth:kernelWidth kernelHeight:kernelHeight strideInPixelsX:strideInPixelsX strideInPixelsY:strideInPixelsY];
  if (result)
  {
    result->super.super.super._encode = sub_239BB2990;
    result->super.super.super._batchEncode = sub_239BB299C;
    result->super.super.super._encodeData = result;
    result->super.super.super._checkFlags |= 2u;
    v14 = result;
    objc_msgSend_setPlugin_(result, v8, 0, v9, v10, v11, v12, v13);
    return v14;
  }

  return result;
}

- (MPSCNNPoolingL2NormGradient)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v12.receiver = self;
  v12.super_class = MPSCNNPoolingL2NormGradient;
  result = [(MPSCNNPoolingGradient *)&v12 initWithCoder:aDecoder device:device];
  if (result)
  {
    result->super.super.super._encode = sub_239BB2990;
    result->super.super.super._batchEncode = sub_239BB299C;
    result->super.super.super._encodeData = result;
    result->super.super.super._checkFlags |= 2u;
    v11 = result;
    objc_msgSend_setPlugin_(result, v5, 0, v6, v7, v8, v9, v10);
    return v11;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v3.receiver = self;
  v3.super_class = MPSCNNPoolingL2NormGradient;
  [(MPSCNNPoolingGradient *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v13.receiver = self;
  v13.super_class = MPSCNNPoolingL2NormGradient;
  result = [(MPSCNNPoolingGradient *)&v13 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 47) = sub_239BB2990;
    *(result + 48) = sub_239BB299C;
    *(result + 92) = self->super.super.super._checkFlags | 2;
    *(result + 49) = result;
    v12 = result;
    objc_msgSend_setPlugin_(result, v6, 0, v7, v8, v9, v10, v11);
    return v12;
  }

  return result;
}

@end