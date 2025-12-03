@interface MPSNDArraySoftMaxGradient
- (MPSNDArraySoftMaxGradient)initWithCoder:(id)coder device:(id)device;
- (MPSNDArraySoftMaxGradient)initWithDevice:(id)device axis:(unint64_t)axis;
- (double)dimensionsToBeRetained;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArraySoftMaxGradient

- (MPSNDArraySoftMaxGradient)initWithDevice:(id)device axis:(unint64_t)axis
{
  v6.receiver = self;
  v6.super_class = MPSNDArraySoftMaxGradient;
  result = [(MPSNDArrayUnaryGradientKernel *)&v6 initWithDevice:device];
  result->_axis = axis;
  result->super.super.super._encodeGradient = EncodeArraySoftMaxGradient;
  return result;
}

- (MPSNDArraySoftMaxGradient)initWithCoder:(id)coder device:(id)device
{
  v8.receiver = self;
  v8.super_class = MPSNDArraySoftMaxGradient;
  result = [(MPSNDArrayUnaryGradientKernel *)&v8 initWithCoder:coder device:device];
  if (result)
  {
    v6 = result;
    v7 = [coder decodeInt64ForKey:@"MPSNDArraySoftMax.axis"];
    result = v6;
    v6->_axis = v7;
    v6->super.super.super._encodeGradient = EncodeArraySoftMaxGradient;
    v6->super.super.super._encodeData = v6;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPSNDArraySoftMaxGradient;
  [(MPSNDArrayMultiaryGradientKernel *)&v5 encodeWithCoder:?];
  [coder encodeInt64:self->_axis forKey:@"MPSNDArraySoftMax.axis"];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArraySoftMaxGradient;
  result = [(MPSNDArrayMultiaryGradientKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 18) = self->_axis;
    self->super.super.super._encodeGradient = EncodeArraySoftMaxGradient;
    self->super.super.super._encodeData = self;
  }

  return result;
}

- (double)dimensionsToBeRetained
{
  v1 = (&v3 | *(self + 144) & 0xFLL);
  *&v3 = 0;
  *v1 = 1;
  return *&v3;
}

@end