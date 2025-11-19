@interface MPSNDArraySignGradient
- (MPSNDArraySignGradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArraySignGradient

- (MPSNDArraySignGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArraySignGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 13;
  return result;
}

@end