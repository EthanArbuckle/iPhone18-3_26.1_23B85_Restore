@interface MPSNDArrayLogSoftMaxGradient
- (MPSNDArrayLogSoftMaxGradient)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayLogSoftMaxGradient)initWithDevice:(id)a3 axis:(unint64_t)a4;
- (double)dimensionsToBeRetained;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayLogSoftMaxGradient

- (MPSNDArrayLogSoftMaxGradient)initWithDevice:(id)a3 axis:(unint64_t)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayLogSoftMaxGradient;
  result = [(MPSNDArrayUnaryGradientKernel *)&v6 initWithDevice:a3];
  result->_axis = a4;
  result->super.super.super._encodeGradient = EncodeArraySoftMaxGradient;
  return result;
}

- (MPSNDArrayLogSoftMaxGradient)initWithCoder:(id)a3 device:(id)a4
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayLogSoftMaxGradient;
  result = [(MPSNDArrayUnaryGradientKernel *)&v8 initWithCoder:a3 device:a4];
  if (result)
  {
    v6 = result;
    v7 = [a3 decodeInt64ForKey:@"MPSNDArraySoftMax.axis"];
    result = v6;
    v6->_axis = v7;
    v6->super.super.super._encodeGradient = EncodeArraySoftMaxGradient;
    v6->super.super.super._encodeData = v6;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayLogSoftMaxGradient;
  [(MPSNDArrayMultiaryGradientKernel *)&v5 encodeWithCoder:?];
  [a3 encodeInt64:self->_axis forKey:@"MPSNDArraySoftMax.axis"];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayLogSoftMaxGradient;
  result = [(MPSNDArrayMultiaryGradientKernel *)&v6 copyWithZone:a3 device:a4];
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
  v1 = (&v3 | *(a1 + 144) & 0xFLL);
  *&v3 = 0;
  *v1 = 1;
  return *&v3;
}

@end