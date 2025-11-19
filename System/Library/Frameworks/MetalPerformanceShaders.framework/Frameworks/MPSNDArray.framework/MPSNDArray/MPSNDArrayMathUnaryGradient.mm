@interface MPSNDArrayMathUnaryGradient
- (MPSNDArrayMathUnaryGradient)initWithCoder:(id)a3 device:(id)a4;
- (MPSNDArrayMathUnaryGradient)initWithDevice:(id)a3;
- (id)copyWithZone:(_NSZone *)a3 device:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPSNDArrayMathUnaryGradient

- (MPSNDArrayMathUnaryGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayMathUnaryGradient;
  result = [(MPSNDArrayUnaryGradientKernel *)&v4 initWithDevice:a3];
  result->super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super._encodeData = result;
  result->_opType = 0;
  return result;
}

- (MPSNDArrayMathUnaryGradient)initWithCoder:(id)a3 device:(id)a4
{
  v8.receiver = self;
  v8.super_class = MPSNDArrayMathUnaryGradient;
  result = [(MPSNDArrayUnaryGradientKernel *)&v8 initWithCoder:a3 device:a4];
  if (result)
  {
    result->super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
    result->super.super.super._encodeData = result;
    v6 = result;
    v7 = [a3 decodeInt32ForKey:@"MPSNDArrayMath.opType"];
    result = v6;
    v6->_opType = v7;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MPSNDArrayMathUnaryGradient;
  [(MPSNDArrayMultiaryGradientKernel *)&v5 encodeWithCoder:?];
  [a3 encodeInt32:self->_opType forKey:@"MPSNDArrayMath.opType"];
}

- (id)copyWithZone:(_NSZone *)a3 device:(id)a4
{
  v6.receiver = self;
  v6.super_class = MPSNDArrayMathUnaryGradient;
  result = [(MPSNDArrayMultiaryGradientKernel *)&v6 copyWithZone:a3 device:a4];
  if (result)
  {
    self->super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
    self->super.super.super._encodeData = self;
    *(result + 36) = self->_opType;
  }

  return result;
}

@end