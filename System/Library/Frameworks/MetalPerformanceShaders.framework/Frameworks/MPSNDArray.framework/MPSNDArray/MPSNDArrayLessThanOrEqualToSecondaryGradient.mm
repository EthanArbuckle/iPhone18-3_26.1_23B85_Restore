@interface MPSNDArrayLessThanOrEqualToSecondaryGradient
- (MPSNDArrayLessThanOrEqualToSecondaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayLessThanOrEqualToSecondaryGradient

- (MPSNDArrayLessThanOrEqualToSecondaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayLessThanOrEqualToSecondaryGradient;
  result = [(MPSNDArrayMathBinarySecondaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 12;
  return result;
}

@end