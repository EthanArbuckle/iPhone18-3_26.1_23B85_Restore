@interface MPSNDArrayAbsoluteGradient
- (MPSNDArrayAbsoluteGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayAbsoluteGradient

- (MPSNDArrayAbsoluteGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayAbsoluteGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 11;
  return result;
}

@end