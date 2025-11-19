@interface MPSNDArraySignbitGradient
- (MPSNDArraySignbitGradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArraySignbitGradient

- (MPSNDArraySignbitGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArraySignbitGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 14;
  return result;
}

@end