@interface MPSNDArrayGreaterThanSecondaryGradient
- (MPSNDArrayGreaterThanSecondaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayGreaterThanSecondaryGradient

- (MPSNDArrayGreaterThanSecondaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayGreaterThanSecondaryGradient;
  result = [(MPSNDArrayMathBinarySecondaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 13;
  return result;
}

@end