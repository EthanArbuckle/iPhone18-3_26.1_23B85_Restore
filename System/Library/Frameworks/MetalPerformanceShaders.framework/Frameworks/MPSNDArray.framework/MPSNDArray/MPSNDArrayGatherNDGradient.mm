@interface MPSNDArrayGatherNDGradient
- (MPSNDArrayGatherNDGradient)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayGatherNDGradient)initWithDevice:(id)device;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayGatherNDGradient

- (MPSNDArrayGatherNDGradient)initWithDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayGatherNDGradient;
  v4 = [(MPSNDArrayBinaryPrimaryGradientKernel *)&v6 initWithDevice:?];
  v4->super.super.super._encodeGradient = EncodeGatherNDGradient;
  v4->super.super.super._encodeData = v4;
  v4->_batchDimensions = 0;
  v4->_allowNegativeIndices = 0;
  v4->_identity = [[MPSNDArrayIdentity alloc] initWithDevice:device];
  return v4;
}

- (MPSNDArrayGatherNDGradient)initWithCoder:(id)coder device:(id)device
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayGatherNDGradient;
  result = [(MPSNDArrayBinaryPrimaryGradientKernel *)&v5 initWithCoder:coder device:device];
  if (result)
  {
    result->super.super.super._encodeGradient = EncodeGatherNDGradient;
    result->super.super.super._encodeData = result;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayGatherNDGradient;
  [(MPSNDArrayMultiaryGradientKernel *)&v3 encodeWithCoder:coder];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayGatherNDGradient;
  result = [(MPSNDArrayMultiaryGradientKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    self->super.super.super._encodeGradient = EncodeGatherNDGradient;
    self->super.super.super._encodeData = self;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayGatherNDGradient;
  [(MPSNDArrayMultiaryBase *)&v3 dealloc];
}

@end