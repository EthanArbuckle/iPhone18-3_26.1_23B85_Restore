@interface MPSNDArrayLogarithmBase10Gradient
- (MPSNDArrayLogarithmBase10Gradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayLogarithmBase10Gradient

- (MPSNDArrayLogarithmBase10Gradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayLogarithmBase10Gradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 6;
  return result;
}

@end