@interface MPSNDArrayMinimumSecondaryGradient
- (MPSNDArrayMinimumSecondaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayMinimumSecondaryGradient

- (MPSNDArrayMinimumSecondaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayMinimumSecondaryGradient;
  result = [(MPSNDArrayMathBinarySecondaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 7;
  return result;
}

@end