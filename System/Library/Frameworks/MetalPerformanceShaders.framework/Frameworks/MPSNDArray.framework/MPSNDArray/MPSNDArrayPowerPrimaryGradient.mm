@interface MPSNDArrayPowerPrimaryGradient
- (MPSNDArrayPowerPrimaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayPowerPrimaryGradient

- (MPSNDArrayPowerPrimaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayPowerPrimaryGradient;
  result = [(MPSNDArrayMathBinaryPrimaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 6;
  return result;
}

@end