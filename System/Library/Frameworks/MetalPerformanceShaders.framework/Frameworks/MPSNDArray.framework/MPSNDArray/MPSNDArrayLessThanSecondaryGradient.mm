@interface MPSNDArrayLessThanSecondaryGradient
- (MPSNDArrayLessThanSecondaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayLessThanSecondaryGradient

- (MPSNDArrayLessThanSecondaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayLessThanSecondaryGradient;
  result = [(MPSNDArrayMathBinarySecondaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 11;
  return result;
}

@end