@interface MPSNDArrayTanGradient
- (MPSNDArrayTanGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayTanGradient

- (MPSNDArrayTanGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayTanGradient;
  result = [(MPSNDArrayMathUnaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathUnaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 21;
  return result;
}

@end