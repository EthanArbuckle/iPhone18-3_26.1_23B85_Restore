@interface MPSNDArrayRoundGradient
- (MPSNDArrayRoundGradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayRoundGradient

- (MPSNDArrayRoundGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayRoundGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 17;
  return result;
}

@end