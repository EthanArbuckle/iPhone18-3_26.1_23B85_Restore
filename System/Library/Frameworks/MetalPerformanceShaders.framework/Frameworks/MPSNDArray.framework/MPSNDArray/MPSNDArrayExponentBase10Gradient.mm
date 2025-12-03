@interface MPSNDArrayExponentBase10Gradient
- (MPSNDArrayExponentBase10Gradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayExponentBase10Gradient

- (MPSNDArrayExponentBase10Gradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayExponentBase10Gradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 3;
  return result;
}

@end