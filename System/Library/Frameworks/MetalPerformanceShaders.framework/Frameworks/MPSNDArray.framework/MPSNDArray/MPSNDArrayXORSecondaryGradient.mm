@interface MPSNDArrayXORSecondaryGradient
- (MPSNDArrayXORSecondaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayXORSecondaryGradient

- (MPSNDArrayXORSecondaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayXORSecondaryGradient;
  result = [(MPSNDArrayMathBinarySecondaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 19;
  return result;
}

@end