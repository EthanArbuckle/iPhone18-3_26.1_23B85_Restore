@interface MPSNDArrayReductionGradient
- (MPSNDArrayReductionGradient)initWithCoder:(id)coder device:(id)device;
- (MPSNDArrayReductionGradient)initWithDevice:(id)device axis:(unint64_t)axis operation:(int)operation;
- (double)dimensionsToBeRetained;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MPSNDArrayReductionGradient

- (MPSNDArrayReductionGradient)initWithDevice:(id)device axis:(unint64_t)axis operation:(int)operation
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayReductionGradient;
  result = [(MPSNDArrayUnaryGradientKernel *)&v8 initWithDevice:device];
  if (result)
  {
    result->_axis = axis;
    result->_operation = operation;
    result->super.super.super._encodeGradient = EncodeArrayReductionGradientNew;
  }

  return result;
}

- (MPSNDArrayReductionGradient)initWithCoder:(id)coder device:(id)device
{
  v7.receiver = self;
  v7.super_class = MPSNDArrayReductionGradient;
  v5 = [(MPSNDArrayUnaryGradientKernel *)&v7 initWithCoder:coder device:device];
  if (v5)
  {
    v5->_axis = [coder decodeInt64ForKey:@"MPSNDArrayReduction.axis"];
    v5->_operation = [coder decodeInt64ForKey:@"MPSNDArrayReduction.operation"];
    v5->super.super.super._encodeGradient = EncodeArrayReductionGradientNew;
    v5->super.super.super._encodeData = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayReductionGradient;
  [(MPSNDArrayMultiaryGradientKernel *)&v5 encodeWithCoder:?];
  [coder encodeInt64:self->_operation forKey:@"MPSNDArrayReduction.operation"];
  [coder encodeInt64:self->_axis forKey:@"MPSNDArrayReduction.axis"];
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayReductionGradient;
  result = [(MPSNDArrayMultiaryGradientKernel *)&v6 copyWithZone:zone device:device];
  if (result)
  {
    *(result + 19) = self->_axis;
    *(result + 36) = self->_operation;
    self->super.super.super._encodeGradient = EncodeArrayReductionGradientNew;
    self->super.super.super._encodeData = self;
  }

  return result;
}

- (double)dimensionsToBeRetained
{
  v1 = (&v3 | *(self + 152) & 0xFLL);
  *&v3 = 0;
  *v1 = 1;
  return *&v3;
}

@end