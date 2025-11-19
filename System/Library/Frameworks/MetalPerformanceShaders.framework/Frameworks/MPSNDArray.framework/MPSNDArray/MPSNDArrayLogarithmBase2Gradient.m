@interface MPSNDArrayLogarithmBase2Gradient
- (MPSNDArrayLogarithmBase2Gradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayLogarithmBase2Gradient

- (MPSNDArrayLogarithmBase2Gradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayLogarithmBase2Gradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 5;
  return result;
}

@end