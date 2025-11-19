@interface MPSNDArrayASinhGradient
- (MPSNDArrayASinhGradient)initWithDevice:(id)a3;
@end

@implementation MPSNDArrayASinhGradient

- (MPSNDArrayASinhGradient)initWithDevice:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayASinhGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:a3];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 28;
  return result;
}

@end