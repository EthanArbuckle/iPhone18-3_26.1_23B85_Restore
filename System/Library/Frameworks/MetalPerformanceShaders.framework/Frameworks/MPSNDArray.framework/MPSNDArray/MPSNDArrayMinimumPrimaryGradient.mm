@interface MPSNDArrayMinimumPrimaryGradient
- (MPSNDArrayMinimumPrimaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayMinimumPrimaryGradient

- (MPSNDArrayMinimumPrimaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayMinimumPrimaryGradient;
  result = [(MPSNDArrayMathBinaryPrimaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 7;
  return result;
}

@end