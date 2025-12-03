@interface MPSNDArrayMaximumPrimaryGradient
- (MPSNDArrayMaximumPrimaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayMaximumPrimaryGradient

- (MPSNDArrayMaximumPrimaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayMaximumPrimaryGradient;
  result = [(MPSNDArrayMathBinaryPrimaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 8;
  return result;
}

@end