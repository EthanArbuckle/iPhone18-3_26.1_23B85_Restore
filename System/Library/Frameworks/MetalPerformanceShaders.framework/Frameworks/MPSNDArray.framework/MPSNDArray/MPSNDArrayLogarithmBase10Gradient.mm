@interface MPSNDArrayLogarithmBase10Gradient
- (MPSNDArrayLogarithmBase10Gradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayLogarithmBase10Gradient

- (MPSNDArrayLogarithmBase10Gradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayLogarithmBase10Gradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 6;
  return result;
}

@end