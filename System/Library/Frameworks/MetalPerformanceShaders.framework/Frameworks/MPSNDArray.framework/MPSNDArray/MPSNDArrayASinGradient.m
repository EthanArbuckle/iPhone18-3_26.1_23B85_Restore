@interface MPSNDArrayASinGradient
- (MPSNDArrayASinGradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayASinGradient

- (MPSNDArrayASinGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayASinGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 25;
  return result;
}

@end