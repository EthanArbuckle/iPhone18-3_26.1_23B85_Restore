@interface MPSNDArrayNOTGradient
- (MPSNDArrayNOTGradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayNOTGradient

- (MPSNDArrayNOTGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayNOTGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 31;
  return result;
}

@end