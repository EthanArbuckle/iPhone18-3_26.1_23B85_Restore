@interface MPSNDArrayORSecondaryGradient
- (MPSNDArrayORSecondaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayORSecondaryGradient

- (MPSNDArrayORSecondaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayORSecondaryGradient;
  result = [(MPSNDArrayMathBinarySecondaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 16;
  return result;
}

@end