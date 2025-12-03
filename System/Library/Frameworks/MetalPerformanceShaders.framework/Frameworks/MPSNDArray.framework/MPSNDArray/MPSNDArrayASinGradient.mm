@interface MPSNDArrayASinGradient
- (MPSNDArrayASinGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayASinGradient

- (MPSNDArrayASinGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayASinGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 25;
  return result;
}

@end