@interface MPSNDArrayLogarithmGradient
- (MPSNDArrayLogarithmGradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayLogarithmGradient

- (MPSNDArrayLogarithmGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayLogarithmGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 4;
  return result;
}

@end