@interface MPSNDArrayLogarithmGradient
- (MPSNDArrayLogarithmGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayLogarithmGradient

- (MPSNDArrayLogarithmGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayLogarithmGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 4;
  return result;
}

@end