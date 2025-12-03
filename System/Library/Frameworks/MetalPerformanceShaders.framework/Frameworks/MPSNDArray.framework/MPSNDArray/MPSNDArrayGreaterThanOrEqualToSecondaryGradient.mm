@interface MPSNDArrayGreaterThanOrEqualToSecondaryGradient
- (MPSNDArrayGreaterThanOrEqualToSecondaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayGreaterThanOrEqualToSecondaryGradient

- (MPSNDArrayGreaterThanOrEqualToSecondaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayGreaterThanOrEqualToSecondaryGradient;
  result = [(MPSNDArrayMathBinarySecondaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 14;
  return result;
}

@end