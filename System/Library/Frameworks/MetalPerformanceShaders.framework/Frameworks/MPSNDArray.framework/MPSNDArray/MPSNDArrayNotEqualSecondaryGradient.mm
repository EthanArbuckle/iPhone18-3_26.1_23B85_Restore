@interface MPSNDArrayNotEqualSecondaryGradient
- (MPSNDArrayNotEqualSecondaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayNotEqualSecondaryGradient

- (MPSNDArrayNotEqualSecondaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayNotEqualSecondaryGradient;
  result = [(MPSNDArrayMathBinarySecondaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 10;
  return result;
}

@end