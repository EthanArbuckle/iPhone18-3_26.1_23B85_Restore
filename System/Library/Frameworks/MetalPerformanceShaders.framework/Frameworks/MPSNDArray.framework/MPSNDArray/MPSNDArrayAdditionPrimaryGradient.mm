@interface MPSNDArrayAdditionPrimaryGradient
- (MPSNDArrayAdditionPrimaryGradient)initWithDevice:(id)device;
@end

@implementation MPSNDArrayAdditionPrimaryGradient

- (MPSNDArrayAdditionPrimaryGradient)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MPSNDArrayAdditionPrimaryGradient;
  result = [(MPSNDArrayMathBinaryPrimaryGradient *)&v4 initWithDevice:device];
  result->super.super.super.super._encodeGradient = EncodeArrayMathBinaryGradient;
  result->super.super.super.super._encodeData = result;
  result->super._opType = 1;
  return result;
}

@end