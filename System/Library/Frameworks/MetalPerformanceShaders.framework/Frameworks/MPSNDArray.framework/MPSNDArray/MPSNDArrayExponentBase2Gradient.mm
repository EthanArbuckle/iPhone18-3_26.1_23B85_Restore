@interface MPSNDArrayExponentBase2Gradient
- (MPSNDArrayExponentBase2Gradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayExponentBase2Gradient

- (MPSNDArrayExponentBase2Gradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayExponentBase2Gradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 2;
  return result;
}

@end