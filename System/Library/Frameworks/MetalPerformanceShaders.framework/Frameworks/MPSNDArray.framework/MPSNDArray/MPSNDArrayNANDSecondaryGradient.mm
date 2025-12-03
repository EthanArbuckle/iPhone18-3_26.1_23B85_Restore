@interface MPSNDArrayNANDSecondaryGradient
- (MPSNDArrayNANDSecondaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayNANDSecondaryGradient

- (MPSNDArrayNANDSecondaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayNANDSecondaryGradient;
  result = [(MPSNDArrayMathBinarySecondaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 17;
  return result;
}

@end