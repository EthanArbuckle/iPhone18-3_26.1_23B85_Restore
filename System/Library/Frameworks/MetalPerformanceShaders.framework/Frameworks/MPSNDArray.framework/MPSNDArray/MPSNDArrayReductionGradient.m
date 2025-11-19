@interface MPSNDArrayReductionGradient
- (MPSNDArrayReductionGradient)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayReductionGradient)initWithDevice:(id)a3 axis:(unint64_t)a4 operation:(int)a5;
- (double)dimensionsToBeRetained;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayReductionGradient

- (MPSNDArrayReductionGradient)initWithDevice:(id)a3 axis:(unint64_t)a4 operation:(int)a5
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayReductionGradient;
  result = [(MPSNDArrayUnaryGradientKernel *)&v8 initWithDevice:a3];
  if (result)
  {
    result->_axis = a4;
    result->_operation = a5;
    result->super.super.super._encodeGradient = EncodeArrayReductionGradientNew;
  }

  return result;
}

- (MPSNDArrayReductionGradient)initWithCoder:(id)a3 device:(id)a4
{
  v7.receiver = self;
  v7.super_class = MPSNDArrayReductionGradient;
  v5 = [(MPSNDArrayUnaryGradientKernel *)&v7 initWithCoder:a3 device:a4];
  if (v5)
  {
    v5->_axis = [a3 decodeInt64ForKey:@"MPSNDArrayReduction.axis"];
    v5->_operation = [a3 decodeInt64ForKey:@"MPSNDArrayReduction.operation"];
    v5->super.super.super._encodeGradient = EncodeArrayReductionGradientNew;
    v5->super.super.super._encodeData = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayReductionGradient;
  [(MPSNDArrayMultiaryGradientKernel *)&v5 encodeWithCoder:?];
  [a3 encodeInt64:self->_operation forKey:@"MPSNDArrayReduction.operation"];
  [a3 encodeInt64:self->_axis forKey:@"MPSNDArrayReduction.axis"];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayReductionGradient;
  result = [(MPSNDArrayMultiaryGradientKernel *)&v6 copyWithZone:a3 device:a4];
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
  v1 = (&v3 | *(a1 + 152) & 0xFLL);
  *&v3 = 0;
  *v1 = 1;
  return *&v3;
}

@end