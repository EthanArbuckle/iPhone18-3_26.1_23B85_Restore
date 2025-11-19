@interface MPSNDArrayIsFiniteGradient
- (MPSNDArrayIsFiniteGradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayIsFiniteGradient

- (MPSNDArrayIsFiniteGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayIsFiniteGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 33;
  return result;
}

@end