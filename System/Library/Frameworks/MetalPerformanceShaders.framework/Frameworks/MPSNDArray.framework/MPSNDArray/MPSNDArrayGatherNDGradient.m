@interface MPSNDArrayGatherNDGradient
- (MPSNDArrayGatherNDGradient)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayGatherNDGradient)initWithDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayGatherNDGradient

- (MPSNDArrayGatherNDGradient)initWithDevice:(id)a3
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayGatherNDGradient;
  v4 = [(MPSNDArrayBinaryPrimaryGradientKernel *)&v6 initWithDevice:?];
  v4->super.super.super._encodeGradient = EncodeGatherNDGradient;
  v4->super.super.super._encodeData = v4;
  v4->_batchDimensions = 0;
  v4->_allowNegativeIndices = 0;
  v4->_identity = [[MPSNDArrayIdentity alloc] initWithDevice:a3];
  return v4;
}

- (MPSNDArrayGatherNDGradient)initWithCoder:(id)a3 device:(id)a4
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayGatherNDGradient;
  result = [(MPSNDArrayBinaryPrimaryGradientKernel *)&v5 initWithCoder:a3 device:a4];
  if (result)
  {
    result->super.super.super._encodeGradient = EncodeGatherNDGradient;
    result->super.super.super._encodeData = result;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayGatherNDGradient;
  [(MPSNDArrayMultiaryGradientKernel *)&v3 encodeWithCoder:a3];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayGatherNDGradient;
  result = [(MPSNDArrayMultiaryGradientKernel *)&v6 copyWithZone:a3 device:a4];
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