@interface MPSNDArrayASinhGradient
- (MPSNDArrayASinhGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayASinhGradient

- (MPSNDArrayASinhGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayASinhGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 28;
  return result;
}

@end