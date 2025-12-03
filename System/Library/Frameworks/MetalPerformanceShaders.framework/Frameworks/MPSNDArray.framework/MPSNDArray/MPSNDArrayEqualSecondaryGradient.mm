@interface MPSNDArrayEqualSecondaryGradient
- (MPSNDArrayEqualSecondaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayEqualSecondaryGradient

- (MPSNDArrayEqualSecondaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayEqualSecondaryGradient;
  result = [(MPSNDArrayMathBinarySecondaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 9;
  return result;
}

@end